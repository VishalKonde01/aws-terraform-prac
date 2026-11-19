#################################################
# AMAZON LINUX 2023
#################################################

#################################################
# AMAZON LINUX 2023
#################################################

data "aws_ami" "amazon_linux" {

  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

#################################################
# EC2
#################################################

resource "aws_instance" "docker_server" {

  ami = data.aws_ami.amazon_linux.id

  instance_type = "c7i-flex.large"

  subnet_id = aws_subnet.public.id

  key_name = "l3-mumbai"

  vpc_security_group_ids = [

    aws_security_group.ec2_sg.id
  ]

user_data = <<-EOF
#!/bin/bash

# Log everything
exec > >(tee /var/log/user-data.log)
exec 2>&1

set -eux

# Update OS
dnf update -y

# Install prerequisites
dnf install -y wget java-21-amazon-corretto

# Verify Java
java --version

# Import Jenkins GPG Key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Download official Jenkins repository file
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/rpm-stable/jenkins.repo

# Clean metadata
dnf clean all
dnf makecache

# Install Jenkins
dnf install -y \
jenkins \
docker \
git 


# Start Jenkins
systemctl start docker
systemctl enable docker
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins


# Wait for startup
sleep 15

# Display status
systemctl status jenkins --no-pager

usermod -aG docker jenkins

systemctl restart jenkins
usermod -aG docker jenkins
# Save initial password to a file for easy access
cat /var/lib/jenkins/secrets/initialAdminPassword > /home/ec2-user/jenkins-password.txt
chown ec2-user:ec2-user /home/ec2-user/jenkins-password.txt

EOF

  tags = {

    Name = "jenkins-server"
  }
}
vpc_name = "qa-vpc-02-tf"
Environment = "qa"
vpc_cidr = "172.10.0.0/16"
enable_dns_hostnames = true
enable_dns_support = true


public_subnet_01_cidr = "172.10.11.0/24"
public_subnet_01_name = "Public-Subnet-QA-01-TF"
map_public_ip_on_launch_1 = true

public_subnet_02_cidr = "172.10.12.0/24"
public_subnet_02_name = "Public-Subnet-02-QA-TF"
map_public_ip_on_launch_2 = true

public_subnet_03_cidr = "172.10.13.0/24"
public_subnet_03_name = "Public-Subnet-03-QA-TF"
map_public_ip_on_launch_3 = true

private_subnet_01_cidr = "172.10.14.0/24"
private_subnet_01_name = "Private-subnet-01-QA-TF"

private_subnet_02_cidr = "172.10.15.0/24"
private_subnet_02_name = "Private-subnet-02-QA-TF"

private_subnet_03_cidr = "172.10.16.0/24"
private_subnet_03_name = "Private-subnet-03-QA-TF"

igw_01_name = "qa_igw_01"

public_rt_01_name = "qa_public_rt_01"

nat_01_name = "qa_Nat_01"

private_rt_01_name = "qa_Private_RT_01"

nat_02_name = "qa_Nat_02"

private_rt_02_name = "qa_Private_RT_02"

nat_03_name = "qa_Nat_03"

private_rt_03_name = "qa_private_RT_03"
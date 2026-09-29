vpc_name = "dev-vpc-01-tf"
Environment = "dev"
vpc_cidr = "10.0.0.0/16"
enable_dns_hostnames = true
enable_dns_support = true


public_subnet_01_cidr = "10.0.1.0/24"
public_subnet_01_name = "Public-Subnet-01-TF"
map_public_ip_on_launch_1 = true

public_subnet_02_cidr = "10.0.2.0/24"
public_subnet_02_name = "Public-Subnet-02-TF"
map_public_ip_on_launch_2 = true

public_subnet_03_cidr = "10.0.3.0/24"
public_subnet_03_name = "Public-Subnet-03-TF"
map_public_ip_on_launch_3 = true

private_subnet_01_cidr = "10.0.4.0/24"
private_subnet_01_name = "Private-subnet-01-TF"

private_subnet_02_cidr = "10.0.5.0/24"
private_subnet_02_name = "Private-subnet-02-TF"

private_subnet_03_cidr = "10.0.6.0/24"
private_subnet_03_name = "Private-subnet-03-TF"


igw_01_name = "dev_Public_igw_01"

public_rt_01_name = "dev_Public_RT_01"

nat_01_name = "dev_Nat_01"

private_rt_01_name = "dev_Private_RT_01"

nat_02_name = "dev_Nat_02"

private_rt_02_name = "dev_Private_RT_02"

nat_03_name = "dev_Nat_03"

private_rt_03_name = "dev_private_RT_03"
module "vpc_module" {
source = "../../../../modules/Networking/VPC"



  vpc_name= var.vpc_name
  Environment = var.Environment
  vpc_cidr = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support


  public_subnet_01_cidr = var.public_subnet_01_cidr
  public_subnet_01_name = var.public_subnet_01_name
  map_public_ip_on_launch_1 = var.map_public_ip_on_launch_1

  public_subnet_02_cidr = var.public_subnet_02_cidr
  public_subnet_02_name = var.public_subnet_02_name
  map_public_ip_on_launch_2 = var.map_public_ip_on_launch_2

  public_subnet_03_cidr = var.public_subnet_03_cidr
  public_subnet_03_name = var.public_subnet_03_name
  map_public_ip_on_launch_3 = var.map_public_ip_on_launch_3

  private_subnet_01_cidr = var.private_subnet_01_cidr
  private_subnet_01_name = var.private_subnet_01_name

  private_subnet_02_cidr = var.private_subnet_02_cidr
  private_subnet_02_name = var.private_subnet_02_name

  private_subnet_03_cidr = var.private_subnet_03_cidr
  private_subnet_03_name = var.private_subnet_03_name


  igw_01_name = var.igw_01_name

  public_rt_01_name = var.public_rt_01_name
  
 

   nat_01_name = var.nat_01_name

  private_rt_01_name = var.private_rt_01_name


  nat_02_name = var.nat_02_name

  private_rt_02_name = var.private_rt_02_name

  nat_03_name = var.nat_03_name

  private_rt_03_name = var.private_rt_03_name

}


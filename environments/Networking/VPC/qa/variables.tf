variable "vpc_name" {
  type = string
}

variable "Environment" {
 type = string
}

variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

# ----------------------------------------------
variable "public_subnet_01_name" {
  type = string
}

variable "public_subnet_01_cidr" {
  type = string
}

variable "map_public_ip_on_launch_1" {
  type = bool
}


#------------------------------------------------

variable "public_subnet_02_name" {
  type = string
}

variable "public_subnet_02_cidr" {
  type = string
}

variable "map_public_ip_on_launch_2" {
  type = bool
}


#------------------------------------------------

variable "public_subnet_03_name" {
  type = string
}

variable "public_subnet_03_cidr" {
  type = string
}

variable "map_public_ip_on_launch_3" {
  type = bool
}


#------------------------------------------------

variable "private_subnet_01_name" {
  type = string
}

variable "private_subnet_01_cidr" {
  type = string
}
#------------------------------------------------

variable "private_subnet_02_name" {
  type = string
}

variable "private_subnet_02_cidr" {
  type = string
}
#------------------------------------------------

variable "private_subnet_03_name" {
  type = string
}

variable "private_subnet_03_cidr" {
  type = string
}

#-----------------------------------------------------
variable "igw_01_name" {
  type = string
}

variable "public_rt_01_name" {
  type = string
}

#-----------------------------------------------

variable "nat_01_name" {
  type = string
}

variable "private_rt_01_name" {
  type = string
}

#-------------------------------------------
variable "nat_02_name" {
  type = string
}

variable "private_rt_02_name" {
  type = string
}

#--------------------------------------------
variable "nat_03_name" {
  type = string
}

variable "private_rt_03_name" {
  type = string
}
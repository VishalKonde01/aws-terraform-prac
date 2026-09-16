variable "ami" {
  type = string
  default = "ami-090d68841c2a28756"
}

variable "instance_type" {
  type = string
  default ="t3.micro"
}

variable "subnet_id" {
  type = string
  default = "subnet-00e88bbf507dcf4bf"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "assign-ip" {
  type = bool
  default = true
}
variable "ami" {
  type = string

}

variable "instance_type" {
  type = string

}

# variable "subnet_id" {
#   type = string
# }


variable "assign-ip" {
  type = bool
  default = true
}

variable "instance_name" {
  type = string
}
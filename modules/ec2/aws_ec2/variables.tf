variable "instance_type" {
  description =  "Instance type for the EC2 resource"
  type = string
  default = "t2.micro"
}

variable security_group_id {
  description = "ID of the security group"
  type = string
}

variable "subnets" {
  description = "A list of subnets"
  type = list(any)
}

variable "subnets_id" {
  description = "A list of subnet ids"
  type = list(any)
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type = string
}

variable "ami" {
  description = "EC2 AMI" //ami-0b5eea76982371e91
  type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}
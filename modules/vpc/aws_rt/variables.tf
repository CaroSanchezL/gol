variable "vpc_id" {
  description = "The ID of the VPC"
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


variable "cidr_block_rt" {
    description = "The CIDR block of the route"
    type = string
}

variable "igw_id" {
    description = "The ID of the Internet Gateway"
    type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}
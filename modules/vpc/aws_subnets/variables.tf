
variable "subnets" {
  description = "A list of subnets"
  type = list(any)
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}


variable "assign_ip4" {
  description = "Whether to assign an ipv4"
  type = bool
}
variable "vpc_cidr" {
    description = "The CIDR of the VPC"
    type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}

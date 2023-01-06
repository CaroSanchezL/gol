variable "vpc_id" {
  type = string
  description = "The ID of the VPC"
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}
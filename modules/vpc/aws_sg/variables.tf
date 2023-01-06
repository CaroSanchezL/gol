variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "tags" {
    description = "A mapping of tags"
    type = map(string)
}
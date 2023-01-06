#-----------------------------SUBNETS---------------------------------#

resource "aws_subnet" "main" {
  for_each = { for x in var.subnets: x.type => x }
    vpc_id     = var.vpc_id
    cidr_block = each.value.cidr_block
    availability_zone = each.value.availability_zone
    map_public_ip_on_launch = var.assign_ip4
    tags = var.tags
}
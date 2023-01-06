#-----------------------------ROUTE TABLE---------------------------------#
resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.cidr_block_rt
    gateway_id = var.igw_id
  }

  tags = var.tags
}

#---------------ROUTE TABLE ASSOCIATIONS-----------------#

resource "aws_main_route_table_association" "this" {
  vpc_id         = var.vpc_id
  route_table_id = aws_route_table.this.id
}

resource "aws_route_table_association" "this" {
  count = length(var.subnets)
  subnet_id = element(var.subnets_id, count.index)
  route_table_id = aws_route_table.this.id
}
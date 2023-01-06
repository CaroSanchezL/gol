#-----------------------------EC2 INSTANCE---------------------------------#

resource "aws_instance" "ec2_gl" {
  count = length(var.subnets)
  subnet_id = element(var.subnets_id, count.index)
  ami           = var.ami
  user_data = var.user_data
  instance_type = var.instance_type
  security_groups = [var.security_group_id]
  tags = var.tags
}

#------------------------------ELASTIC IP---------------------------------#

resource "aws_eip" "lb" {
  count = length(aws_instance.ec2_gl)
  instance =  aws_instance.ec2_gl[count.index].id
}
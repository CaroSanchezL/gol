module "vpc" {
    source = "../modules/vpc/aws_vpc"
    vpc_cidr = var.vpc_cidr
    tags = var.tags
}

module "subnets" {
    source = "../modules/vpc/aws_subnets"
    vpc_id = module.vpc.vpc_id
    subnets = var.subnets
    assign_ip4 = var.assign_ip4
    tags = var.tags
}

module "internet_gateway" {
    source = "../modules/vpc/aws_igw"
    vpc_id = module.vpc.vpc_id
    tags = var.tags
}

module "route_table" {
    source = "../modules/vpc/aws_rt"
    vpc_id = module.vpc.vpc_id
    cidr_block_rt = var.cidr_block_rt
    igw_id = module.internet_gateway.igw_id
    subnets = var.subnets
    subnets_id = module.subnets.subnets_id
    tags = var.tags
}

module "security_group" {
    source = "../modules/vpc/aws_sg"
    vpc_id = module.vpc.vpc_id
    tags = var.tags
}

module "ec2" {
    source = "../modules/ec2/aws_ec2"
    subnets = var.subnets
    ami = var.ami
    subnets_id = module.subnets.subnets_id
    user_data = file("./scripts/user-data.sh")
    instance_type = var.instance_type
    security_group_id = module.security_group.ec2_sg_id
    tags = var.tags
}
vpc_cidr = "10.0.0.0/16"

subnets = [
    {
        type = "public1"
        availability_zone = "us-east-1a"
        cidr_block = "10.0.10.0/24"
    },
    {
        type = "public2"
        availability_zone = "us-east-1b"
        cidr_block = "10.0.0.0/24"
    }
]

cidr_block_rt = "0.0.0.0/0"

tags = {
    Name = "challenge" 
    Owner = "io"
}

instance_type = "t2.micro"

ami = "ami-06878d265978313ca"

assign_ip4 = true
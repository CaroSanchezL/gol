output "subnets_id" {
    value = values(aws_subnet.main)[*].id
}
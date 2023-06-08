output "primary_vpc_id" {
  description = "Virginia VPC ID"
  value       = aws_vpc.primary.id
}

output "secondary_vpc_id" {
  description = "Seoul VPC ID"
  value       = aws_vpc.secondary.id
}

# EC2 Outputs
output "primary_ec2_ids" {
  description = "Virginia EC2 Instance IDs"
  value       = aws_instance.primary_ec2[*].id
}

output "secondary_ec2_ids" {
  description = "Seoul EC2 Instance IDs"
  value       = aws_instance.secondary_ec2[*].id
}

output "primary_ec2_private_ips" {
  description = "Virginia EC2 Private IPs"
  value       = aws_instance.primary_ec2[*].private_ip
}

output "secondary_ec2_private_ips" {
  description = "Seoul EC2 Private IPs"
  value       = aws_instance.secondary_ec2[*].private_ip
}

# Peering Output
output "vpc_peering_id" {
  description = "VPC Peering Connection ID"
  value       = aws_vpc_peering_connection.peer.id
}
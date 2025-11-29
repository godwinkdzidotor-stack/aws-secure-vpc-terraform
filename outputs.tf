output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value       = aws_subnet.private[*].id
}

output "web_security_group_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web_sg.id
}

output "vpc_flow_logs_log_group" {
  description = "CloudWatch log group name for VPC flow logs"
  value       = var.enable_flow_logs && length(aws_cloudwatch_log_group.vpc_flow_logs) > 0
    ? aws_cloudwatch_log_group.vpc_flow_logs[0].name
    : null
}

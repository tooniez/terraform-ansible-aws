output "cloudwatch_log_group_name" {
  value = aws_cloudwatch_log_group.main.name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.logs.id
}

output "cloudwatch_log_group_arn" {
  value       = aws_cloudwatch_log_group.main.arn
  description = "The ARN of the CloudWatch Log Group"
}

output "cloudwatch_log_group_retention_in_days" {
  value       = aws_cloudwatch_log_group.main.retention_in_days
  description = "The retention period of the CloudWatch Log Group in days"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.logs.arn
  description = "The ARN of the S3 bucket for logs"
}

output "s3_bucket_region" {
  value       = aws_s3_bucket.logs.region
  description = "The region where the S3 bucket for logs is located"
}
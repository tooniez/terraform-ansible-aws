output "function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.this.function_name
}

output "function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.this.arn
}

output "invoke_arn" {
  description = "Invocation ARN of the Lambda function"
  value       = aws_lambda_function.this.invoke_arn
}

output "function_url" {
  description = "URL of the Lambda function (if function URL is enabled)"
  value       = try(aws_lambda_function_url.this[0].function_url, null)
}

output "role_name" {
  description = "Name of the IAM role attached to the Lambda function"
  value       = aws_iam_role.lambda_role.name
}

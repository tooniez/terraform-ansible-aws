output "queue_url" {
  value = aws_sqs_queue.main.id
}

output "queue_arn" {
  value = aws_sqs_queue.main.arn
}
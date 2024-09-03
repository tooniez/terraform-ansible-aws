resource "aws_sqs_queue" "main" {
  name = "${var.env}-sqs-queue"

  tags = {
    Environment = var.env
  }
}
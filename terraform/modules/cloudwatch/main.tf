resource "aws_cloudwatch_log_group" "main" {
  name = "${var.env}-log-group"
  retention_in_days = var.log_retention_days

  tags = {
    Environment = var.env
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "${var.env}-logs-${random_string.bucket_suffix.result}"
  force_destroy = true

  tags = {
    Environment = var.env
  }
}

resource "aws_s3_bucket_versioning" "logs" {
  bucket = aws_s3_bucket.logs.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "logs" {
  bucket = aws_s3_bucket.logs.id

  rule {
    id = "log_lifecycle"
    status = "Enabled"

    expiration {
      days = var.log_retention_days
    }
  }
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}
output "bucket_id" {
  value = aws_s3_bucket.s3_bucket.id
  description = "The id of S3 bucket"
}
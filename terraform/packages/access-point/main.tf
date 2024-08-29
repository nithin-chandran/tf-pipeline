resource "aws_s3_access_point" "access_point" {
  bucket = var.bucket_id
  name   = var.access_point_name
  vpc_configuration {
    vpc_id = var.vpc_id
  }
}
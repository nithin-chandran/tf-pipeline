module "pipeline-s3" {
  source      = "../../packages/s3"
  bucket_name = "pipeline-2-s3"
}

data "aws_vpc" "default" {
  default = true
}

module "pipeline-access-point" {
  source            = "../../packages/access-point"
  bucket_id         = module.pipeline-s3.bucket_id
  access_point_name = "pipeline-2-access-point"
  vpc_id            = data.aws_vpc.default.id
}
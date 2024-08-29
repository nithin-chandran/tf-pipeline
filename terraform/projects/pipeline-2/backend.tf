terraform {
  backend "s3" {
    bucket = "terraform-state-8182869"
    key    = "pipeline-2-state"
    region = "ap-south-1"
  }
}
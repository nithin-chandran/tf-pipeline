module "pipeline-1-repo-ecr" {
  source          = "../../modules/pipeline-1-repo-ecr"
  principal_user  = var.ecr_user
}
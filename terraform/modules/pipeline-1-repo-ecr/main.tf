module "pipeline-repo-ecr" {
  source          = "../../packages/ecr"
  repository_name = "pipeline-repo"
  principal_user  = var.principal_user
}
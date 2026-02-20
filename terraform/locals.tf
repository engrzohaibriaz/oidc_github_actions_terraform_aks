
locals {
  common_tags = {
    environment = var.environment
    project     = "aks-platform"
    owner       = "devops-team"
    managed_by  = "terraform"
  }
}

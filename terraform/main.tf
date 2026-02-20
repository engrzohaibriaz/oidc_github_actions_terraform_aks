
module "monitoring" {
  source              = "../modules/monitoring"
  resource_group_name = "aks-${var.environment}-rg"
  location            = var.location
  tags                = local.common_tags
}

module "aks" {
  source              = "../modules/aks"
  resource_group_name = "aks-${var.environment}-rg"
  cluster_name        = "aks-${var.environment}"
  location            = var.location
  node_count          = var.node_count
  vm_size             = var.vm_size
  kubernetes_version  = var.kubernetes_version
  log_analytics_id    = module.monitoring.workspace_id
  tags                = local.common_tags
}

variable "resource_group_name" {
  description = "Name of the resource group where AKS cluster will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number

  validation {
    condition     = var.node_count > 0
    error_message = "node_count must be greater than 0"
  }
}

variable "vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version to deploy in the cluster"
  type        = string
}

variable "log_analytics_id" {
  description = "ID of the Log Analytics workspace to integrate with AKS monitoring"
  type        = string
}

variable "tags" {
  description = "Map of tags applied to all resources in the module"
  type        = map(string)
  default     = {}
}

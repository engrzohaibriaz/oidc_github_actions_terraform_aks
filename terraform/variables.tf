variable "environment" {
  description = "Deployment environment (dev, qa, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, prod."
  }
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS default node pool"
  type        = number

  validation {
    condition     = var.node_count > 0
    error_message = "Node count must be greater than zero."
  }
}

variable "vm_size" {
  description = "Azure VM size for AKS nodes"
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version"
  type        = string
}


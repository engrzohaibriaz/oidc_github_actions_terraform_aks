
variable "resource_group_name" {
  description = "Name of the resource group where Log Analytics workspace will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the Log Analytics workspace will be deployed"
  type        = string
}

variable "tags" {
  description = "Map of tags applied to the Log Analytics workspace"
  type        = map(string)
  default     = {}
}

variable "resource_group_name" {
  default = "1-77437418-playground-sandbox"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "location" {
  default = "eastus"
}

variable "agent_count" {
  default = 3
}

variable "dns_prefix" {
  default = "k8stest"
}

variable "cluster_name" {
  default = "k8stest"
}

variable "log_analytics_workspace_name" {
  default = "testLogAnalyticsWorkspaceName"
}

variable "log_analytics_workspace_location" {
  default = "eastus"
}
 
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}
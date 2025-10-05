variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "location" {
  type = string
}


variable "storage_account" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    is_hns_enabled           = optional(bool, false)
    min_tls_version          = optional(string, "TLS1_2")
  }))
}
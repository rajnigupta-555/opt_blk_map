resource_group_name = "rg_dev"
location            = "East US"

storage_account = {
  sg1 = {
    name                     = "stadev1"
    resource_group_name      = "rg_dev"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  sg2 = {
    name                     = "stadev2"
    resource_group_name      = "rg_dev"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    is_hns_enabled           = true
    min_tls_version          = "TLS1_2"
  }
}
provider "azurerm" {
  features {

  }
}
provider "random" {
}

resource "random_string" "randomName" {
  count   = var.anf-volume.name == "random" ? 1 : 0
  length  = 16
  special = false
}

locals {
  volume_name = var.anf-volume.name == "random" ? random_string.randomName.0.result : var.anf-volume.name
}

resource "azurerm_netapp_pool" "pool" {
  name                = var.anf-pool.name
  account_name        = data.azurerm_netapp_account.tf-netapp-acc.name
  location            = data.azurerm_netapp_account.tf-netapp-acc.location
  resource_group_name = var.anf-account.resource_group_name
  service_level       = var.anf-pool.service_level
  size_in_tb          = var.anf-pool.size
}

resource "azurerm_netapp_volume" "volume" {
  lifecycle {
    prevent_destroy = true
  }
  name                = local.volume_name
  volume_path         = local.volume_name
  location            = data.azurerm_netapp_account.tf-netapp-acc.location
  account_name        = data.azurerm_netapp_account.tf-netapp-acc.name
  subnet_id           = data.azurerm_subnet.tf-subnet.id
  pool_name           = azurerm_netapp_pool.pool.name
  service_level       = azurerm_netapp_pool.pool.service_level
  protocols           = var.anf-volume.type
  storage_quota_in_gb = var.anf-volume.size
  resource_group_name = var.anf-account.resource_group_name
}

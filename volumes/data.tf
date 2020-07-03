

data "azurerm_netapp_account" "tf-netapp-acc" {
  resource_group_name = var.anf-account.resource_group_name
  name                = var.anf-account.account_name
}

data "azurerm_subnet" "tf-subnet" {
  name                 = var.subnet.name
  virtual_network_name = var.subnet.virtual_network_name
  resource_group_name  = var.subnet.resource_group_name
}

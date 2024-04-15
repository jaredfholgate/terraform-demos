resource "azurerm_resource_group" "this" {
  name     = "rg-${var.postfix}"
  location = var.location
}

resource "azurerm_virtual_network" "this" {
  name                = "vnet-${var.postfix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = [local.virtual_network_address_space]
}

resource "azurerm_subnet" "this" {
  for_each             = local.subnets
  name                 = "subnet-${var.postfix}-${each.key}"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [each.value]
}

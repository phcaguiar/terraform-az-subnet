data "azurerm_resource_group" "resource_group" {
  name = "${var.azure_resource_group}"
}

resource "azurerm_subnet" "subnet" {
  name                      = "${var.subnet_name}"
  virtual_network_name      = "${var.virtual_network_name}"
  resource_group_name       = "${var.azure_resource_group}"
  #address_prefix            = "${(cidrsubnet(var.vnet_cidr,8,1))}"
  #address_prefix            = "${var.subnet_prefixes[count.index]}"
  address_prefix            = "${var.subnet_prefixe}"
  #network_security_group_id = "${azurerm_network_security_group.security_group.id}"
  #count                     = "${var.subnet_count}"
}
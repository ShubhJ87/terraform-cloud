
resource "azurerm_virtual_network" "azurermvm" {
    //name = var.Azure_Security_NIC
    //name = local.virtual_network.name
    name = "${terraform.workspace}-vmnetwork"
    location = var.Resource_group_Location
    resource_group_name = azurerm_resource_group.azurerm.name
    //address_space       = ["10.0.0.0/16"]
    address_space = local.virtual_network.address_space
    //When working with different workspaces for dynamic context
    //address_space = [local.address_space[terraform.workspace]]
      depends_on = [
      azurerm_resource_group.azurerm
    ]
  tags = {
    environment = "QA"
  }


}
//Subnet Creation
resource "azurerm_subnet" "subnetA" {
    name = local.subnets[0].name
    resource_group_name = azurerm_resource_group.azurerm.name
    virtual_network_name = azurerm_virtual_network.azurermvm.name
    address_prefixes = [local.subnets[0].address_prefix]
    depends_on = [
      azurerm_virtual_network.azurermvm
    ]  
}


resource "azurerm_subnet" "subnetB" {
    name = local.subnets[1].name
    resource_group_name = azurerm_resource_group.azurerm.name
    virtual_network_name = azurerm_virtual_network.azurermvm.name
    address_prefixes = [local.subnets[1].address_prefix]
    depends_on = [
      azurerm_virtual_network.azurermvm
    ]  
}

// Network Interface Creation
resource "azurerm_network_interface" "AzureNIC" {
    //name = local.azure_interface_name
    name = "${terraform.workspace}-NIC"
    resource_group_name = azurerm_resource_group.azurerm.name
    location = var.Resource_group_Location
  
  ip_configuration {
    name = "Internal"
    subnet_id = azurerm_subnet.subnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.azurerm_publicip.id
  }
  depends_on = [
    azurerm_subnet.subnetA
  ]
}

//Public IP Creation for VM 
resource "azurerm_public_ip" "azurerm_publicip" {
  //name = local.azure_public_ip_name 
  name = "${terraform.workspace}-PublicIP"
  resource_group_name = local.resource_group_name
  location = var.Resource_group_Location
  allocation_method = "Static"
  depends_on = [
    azurerm_resource_group.azurerm
  ]
  
}

resource "azurerm_network_security_group" "azurerm_secgroup" {
  //name = var.Azure_Security_Group
  name = "${terraform.workspace}-NSG"
  resource_group_name = azurerm_resource_group.azurerm.name
  location = var.Resource_group_Location
  security_rule {
    name                       = "AllowRDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  depends_on = [
    azurerm_resource_group.azurerm
  ]

}


resource "azurerm_subnet_network_security_group_association" "azurerm_assoc" {
subnet_id = azurerm_subnet.subnetA.id
network_security_group_id = azurerm_network_security_group.azurerm_secgroup.id

}



  


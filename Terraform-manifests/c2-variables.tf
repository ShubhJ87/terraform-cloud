variable "Resource_group_name" {
    type = string
    description = ""
    default = "AZRG-400"
}

variable "Resource_group_Location"{
    type = string 
    description = "value"
    default = "West Europe"
}

variable "Storage_Account"{
    type = string
    description = "Storage Account"
    default = "istorage400"
}

variable "Storage_Account_Container"{
    type = string
    description = "Storage Account Container"
    default = "istoragecontainer"
}

variable "Azure_Blob" {
    type = string 
    description = "Azure Blob"
    default = "istorageblob"
  
}

variable "Azure_Security_Group"{
    type = string
    description = "Azure Security Group"
    default = "AZRG-400-SG"
    
}

variable "Azure_Security_NIC"{
    type = string
    description = "Azure Network Interface"
    default = "azrg-400-nic"
}


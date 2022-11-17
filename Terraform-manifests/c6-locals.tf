locals{
        virtual_network={
        name = "azrg-400-VM"
        address_space = ["10.0.0.0/16"]
    }

    subnets = [
        {
            name = "subnetA"
            address_prefix = "10.0.0.0/24" 
        },
        {
            name = "subnetB"
            address_prefix = "10.0.1.0/24" 
        }
    ]

    azure_interface_name ="AZRG_400_NInterface"
    azure_public_ip_name = "AZRG_400_PublicIPAddr"
    azure_subnet_group_name = "AZRG_400_Subnet_Group"
    azure_windows_vm_name = "windowsvm"
    azure_managed_disk_name = "appdisk"
    azure_app_service_plan = "weebappp"
    azure_mgmnt_lock = "appvm-lock"

    address_space={
        default = "10.2.0.0/16"
        
    }
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
  }

resource "azurerm_managed_disk" "source" {
  name                 = "TS-Dev-App-disk"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "100"

  tags = {
    env = "Dev"
    createdby = "TSteam"
  }
}

resource "azurerm_managed_disk" "copy" {
  name                 = "TS-Dev-App-datadisk"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_ZRS"
  create_option        = "copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "100"
    
    tags = {
        environment = "Dev"
        createdby   = "TSteam"
  }
}

resource "azurerm_managed_disk" "copy1" {
  name                 = "TS-Dev-App-logdisk"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "1"
    
    tags = {
        environment = "Dev"
        createdby   = "TSteam"
   }
 }


 resource "azurerm_managed_disk" "copy2" {
  name                 = "TS-Dev-App-osdisk"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_ZRS"
  create_option        = "copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "100"
    
    tags = {
        environment =  "Dev"
        createdby   =  "TSteam"
    }   
 }   
 
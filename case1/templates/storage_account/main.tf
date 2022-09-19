resource "azurerm_storage_account" "sa" {
  name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location = var.resource_group_location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = var.common_tags
}

resource "azurerm_storage_container" "sa_container" {
  name                  = var.storage_account_container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_blob" "example" {

  # fileset -> enumerates a set of regular file names given a path and pattern. 
  # The path is automatically removed from the resulting set of file names and 
  # any result still containing path separators always returns forward slash (/) 
  # as the path separator for cross-system compatibility.

  # for_each = fileset(path.module, "./../files/*")
 
  # name                   = trim(each.key, "./../files/")
  name = "blank.txt"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sa_container.name
  type                   = var.storage_account_blob_type
  # source                 = each.key
  source = "C:/Users/cbritole/OneDrive - NTT DATA EMEAL/Documentos/teste-final-case1/case1/files/blank.txt"
}
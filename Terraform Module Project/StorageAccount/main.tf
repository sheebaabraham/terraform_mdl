resource "azurerm_storage_account" "examplestg" {
    name=var.stgbase_name
    resource_group_name = var.resource_group_name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "GRS"
}
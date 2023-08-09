module "ResourceGroup" {
  source    = "./ResourceGroup"
  base_name = "tfexample"
  location  = "East US"
}

module "StorageAccount" {
  source              = "./StorageAccount"
  stgbase_name        = "exampll2"
  resource_group_name = module.ResourceGroup.rg_name_out
  location            = "East US"

}
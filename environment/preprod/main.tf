module "rg" {
    source = "../../module/azurerm_resource_group"
    rg=var.rg
    }

module "stg" {
    depends_on = [module.rg]
    source = "../../module/azurerm_storage_account"
    stg=var.stg
  
}
module "vnet" {
    depends_on = [module.rg]
    source = "../../module/azurerm_virtual_network"
    vnet=var.vnet
  
}
module "snet" {
    source ="../../module/azurerm_subnet"
    snet =var.snet
  }
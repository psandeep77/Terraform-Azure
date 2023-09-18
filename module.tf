module "rsg" {
  source         = "./rsg"
  resource_group = var.resource_group
  location       = var.location
}

module "vnet" {
  source         = "./vnet"
  vnet           = var.vnet
  address_space  = var.address_space
  resource_group = var.resource_group
  location       = var.location
  depends_on     = [module.rsg]
}

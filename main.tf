provider "azurerm" {
  features {}
}

module "app_service" {
  source              = "./modules/azure_app_service"
  name                = "example-app-service"
  app_service_plan_id = "example-plan-id"
  app_service_name    = "example-app"
  resource_group_name = "example-rg"
  location            = "East US"
}

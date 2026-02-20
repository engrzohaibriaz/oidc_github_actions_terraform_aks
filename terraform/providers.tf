
provider "azurerm" {
  #resource_provider_registrations = "none" #for 4.0
  
  # Use this for AzureRM versions older than 4.0
  skip_provider_registration = true
  features {}
}

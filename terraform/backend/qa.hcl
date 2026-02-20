
resource_group_name  = "rg-terraform-storage"
storage_account_name = "accterraform123"
container_name       = "tfstatefiles"
key                  = "qatfstate"
use_oidc             = true                      # Ensure this is set

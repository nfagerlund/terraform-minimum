# terraform {
#   backend "remote" {
#     hostname = "tfe-zone-b0c8608c.ngrok.io"
#     organization = "hashicorp"
#     workspaces {
#       name = "nothingland"
#     }
#   }
# }

# terraform {
#   backend "remote" {
#     hostname     = "app.terraform.io"
#     organization = "nicktech"
#     workspaces {
#       prefix = "minimum-"
#     }
#   }
# }

# terraform {
#   backend "remote" {
#     organization = "nicktech"
#
#     workspaces {
#       name = "deploy-check"
#     }
#   }
# }

# terraform {
#   backend "remote" {
#     hostname     = "staging-app.terraform.io"
#     organization = "example_corp"
#
#     workspaces {
#       name = "deploy-check"
#     }
#   }
# }

# terraform {
#   backend "remote" {
#     hostname     = "app.terraform.io"
#     organization = "nick_throwaway2"
#     workspaces {
#       name = "terraform-minimum-dev"
#     }
#   }
# }



terraform {
  backend "remote" {
    hostname     = "tfe-zone-b0c8608c.ngrok.io"
    organization = "shadycorp"
    workspaces {
      name = "fuzzer"
    }
  }
}

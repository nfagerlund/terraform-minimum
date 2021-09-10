terraform {
  backend "remote" {
    hostname     = "tfcdev-21675e9a.ngrok.io"
    organization = "hashicorp"
    workspaces {
      name = "wk1"
    }
  }
}

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
#     hostname     = "app.terraform.io"
#     organization = "nicktech"
#     workspaces {
#       name = "minimum-dev"
#     }
#   }
# }



# terraform {
#   backend "remote" {
#     hostname     = "tfe-zone-b0c8608c.ngrok.io"
#     organization = "shadycorp"
#     workspaces {
#       name = "fly-by-night-dev"
#     }
#   }
# }

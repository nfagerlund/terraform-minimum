terraform {
  required_version = "0.11.15"

  backend "remote" {
    # hostname = "tfcdev-21675e9a.ngrok.io"
    hostname     = "app.staging.terraform.io"
    organization = "barretto"

    # organization = "hashicorp"

    workspaces {
      # prefix = "app-"
      name = "upgrayed"

      # tags = ["abc-def"]
    }
  }
}

# terraform {
#   backend "local" {
#     # path = "./tf.state"
#   }
# }


# hostname     = "app.staging.terraform.io"
# terraform {
#   cloud {
#     organization = "barretto"
#     workspaces {
#       name = "wk1"
#     }
#   }
# }


# terraform {
#   backend "pg" {
#     conn_str = "postgres://barrettclark@localhost/barrettclark?sslmode=disable"
#     workspaces {
#       name = "wk3"
#     }
#   }
# }


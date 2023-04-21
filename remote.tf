# terraform {
#   required_version = "0.12.31"
#
#   backend "remote" {
#     # hostname = "tfcdev-21675e9a.ngrok.io"
#     hostname     = "app.staging.terraform.io"
#     organization = "barretto"
#
#     workspaces {
#       # prefix = "app-"
#       name = "greedy"
#       # tags = ["abc-def"]
#     }
#   }
# }

# terraform {
#   backend "local" {
#     # path = "./tf.state"
#   }
# }
terraform {
  required_version = "~> 1.4"
  cloud {
    hostname     = "app.staging.terraform.io"
    organization = "barretto"
    workspaces {
      name = "wk1"
    }
  }
}
# terraform {
#   backend "pg" {
#     conn_str = "postgres://barrettclark@localhost/barrettclark?sslmode=disable"
#     workspaces {
#       name = "wk3"
#     }
#   }
# }

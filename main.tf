variable "username" {
}

variable "where" {
  type = string
  default = "bunkum"
}

variable "org" {
  type = string
  default = "shadycorp"
}

variable "host" {
  type = string
  default = "tfe-zone-b0c8608c.ngrok.io"
}

resource "null_resource" "random" {
  triggers = {
    username = var.username
  }
}

data "terraform_remote_state" "other_username" {
  backend = "remote"
  count = var.where == "nowhere" ? 0 : 1

  config = {
    hostname = var.host
    organization = var.org
    workspaces = {
      name = var.where
    }
  }
}

output "random_id" {
  value = "Changed to ${null_resource.random.id}"
}

output "username" {
  value = "Username is ${var.username}. Extra text!!"
}

locals {
  other_username = length(data.terraform_remote_state.other_username) > 0 ? data.terraform_remote_state.other_username[0].outputs.username : "[nothing]"
}

output "other_username" {
  value = local.other_username
}

# data "terraform_remote_state" "dev" {
#   backend = "remote"
#   workspace = "dev"
#   config = {
#     organization = "nicktech"
#     workspaces = {
#       # name = "minimum-dev"
#       prefix = "minimum-"
#     }
#   }
# }

output "rollup" {
  value = {
    random_id = null_resource.random.id
    username = var.username
    other_username = local.other_username
  }
}

output "static" {
  value = ["one", "two"]
  sensitive = true
}

output "static_also" {
  value = "hey"
  sensitive = true
}

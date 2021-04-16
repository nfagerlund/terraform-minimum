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

  #   provisioner "local-exec" {
  #     command = "sleep 12"
  #   }
  # only changes when configuration edited, or when username changes.
  # provisioner "local-exec" {
  #   command = "curl https://beyondgrep.com/ack-v3.1.1 > ./ack && chmod 0755 ./ack"
  # }
  # provisioner "local-exec" {
  #   command = "./ack random"
  # }
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

output "random" {
  value = "Changed to ${null_resource.random.id}"
}

output "username" {
  value = "Username is ${var.username}. Extra text???"
}

output "other_username" {
  value = length(data.terraform_remote_state.other_username) > 0 ? data.terraform_remote_state.other_username[0].outputs.username : "[nothing]"
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

# output "username-dev" {
#   value = data.terraform_remote_state.dev.outputs.username
# }

# output "all-dev" {
#   value = data.terraform_remote_state.dev.outputs
# }

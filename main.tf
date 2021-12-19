variable "username" {
}

resource "null_resource" "random" {
  triggers = {
    username = var.username
  }
}

module "child" {
  source = "./child"
}

output "random" {
  value = "Changed to ${null_resource.random.id}"
}

output "username" {
  value = "Username is ${var.username}. Extra text???"
}


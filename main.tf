variable "username" {
  default = "default from original config"
}

variable "missing" {
  type = string
}

resource "null_resource" "random" {
  triggers = {
    username = var.username
  }
}

output "random_id" {
  value = "Changed to ${null_resource.random.id}"
}

output "username" {
  value = "Username is ${var.username}. Extra text!!"
}

output "rollup" {
  value = {
    random_id = null_resource.random.id
    username = var.username
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

output "failing" {
  value = "wait wasn't that ${var.missing}?"
}

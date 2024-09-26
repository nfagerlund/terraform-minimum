variable "username" {
  default = "default from original config"
}

resource "null_resource" "random" {
  triggers = {
    username = var.username
  }
}

data "null_data_source" "dumbran" {
  inputs = {
    random = null_resource.random.id
  }
}

data "null_data_source" "pointless" {
  inputs = {
    point = "line"
  }
}

output "random_id" {
  value = "Changed to ${null_resource.random.id}, extra text"
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

output "is_null" {
  value = null
}

resource "tfcoremock_simple_resource" "example" {
  id      = "my-simple-resource"
  bool    = true
  number  = 0
  string  = <<-EOT
    hey there
      hey.
        heyyyyyyyyyyyy
    ok.
    EOT
  float   = 0
  integer = 0
}


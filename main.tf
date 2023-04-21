# RESOURCES
resource "null_resource" "random" {
  triggers = {
    username = var.username
  }
}

resource "random_pet" "always_new" {
  keepers = {
    uuid = uuid() # Force a new name each time
  }
  length = var.animal_count
}

resource "random_pet" "tg" {
  count = 2

  separator = "-"
  length    = 1

  keepers = {
    count = count.index
  }
}

# VARIABLES
variable "animal_count" {
  type = number
}

variable "author" {
  type = string
}

variable "username" {
}

# OUTPUTS
output "author" {
  value = var.author
}

output "random" {
  value = "Changed to ${null_resource.random.id}"
}

output "username" {
  value = "Username is ${var.username}. Extra text???"
}


output "val" {
  value       = terraform.workspace
  description = "The workspace"
  sensitive   = true
}

output "pet" {
  value = random_pet.always_new.id
}

output "complex_pet" {
  value = { name_of_pet : "${random_pet.always_new.id}" }
}

output "mapppp" {
  value = tomap({
    "foo" = "bar",
    "num" = 1,
  })
}

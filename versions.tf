terraform {
  provider "null" {
    source = "hashicorp/null"

    # version = "3.1.0"
  }

  provider "random" {
    source = "hashicorp/random"

    # version = "3.1.0"
  }

  # tfe                     = {
  #   version               = "~> 0.26.0"
  # }
  # nested = {
  #   source = "alisdair/nested"
  # }
}

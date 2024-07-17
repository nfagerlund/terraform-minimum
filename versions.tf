terraform {
  required_version = ">= 0.13"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.0"
    }

    tfcoremock = {
      source = "hashicorp/tfcoremock"
      version = "0.2.0"
    }
  }
}




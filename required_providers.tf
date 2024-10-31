#
# Copyright 2024 Emmanuel Bergerat
#

# -
# - Required Terraform providers & versions
# -
terraform {
  required_providers {
    http = {
      # https://registry.terraform.io/providers/hashicorp/http/latest
      source  = "hashicorp/http"
      version = "~> 3.4"
    }
  }
}

# Public IP module

## Overview

This Terraform module fetch the Public IP of the machine running the Terraform plan.

## Notes

None.

## Example

```yaml
module "publicip" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/publicip/"
  version = "~> 1.0"
}

## Usage elsewehre:
locals {
  # List of Public IPs to allow
  public_internet_ips_to_allow = concat(var.public_internet_ips_to_allow, [module.publicip.public_ip])
}
```

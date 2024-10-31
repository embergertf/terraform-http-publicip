<!-- BEGIN_TF_DOCS -->
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

## Documentation
<!-- markdownlint-disable MD033 -->

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.4 |

### Modules

No modules.

### Inputs

No inputs.

### Resources

| Name | Type |
|------|------|
| [http_http.icanhazip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [http_http.ifconfigco_json](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The Public IP address of the machine running this Terraform plan. |
| <a name="output_public_ip_asn"></a> [public\_ip\_asn](#output\_public\_ip\_asn) | The ASN code. |
| <a name="output_public_ip_asn_org"></a> [public\_ip\_asn\_org](#output\_public\_ip\_asn\_org) | The ASN Organization code. |
| <a name="output_public_ip_city"></a> [public\_ip\_city](#output\_public\_ip\_city) | The City name. |
| <a name="output_public_ip_country"></a> [public\_ip\_country](#output\_public\_ip\_country) | The Country name. |
| <a name="output_public_ip_country_code"></a> [public\_ip\_country\_code](#output\_public\_ip\_country\_code) | The Country ISO code. |
| <a name="output_public_ip_decimal"></a> [public\_ip\_decimal](#output\_public\_ip\_decimal) | The Public IP address in decimal. |
| <a name="output_public_ip_hostname"></a> [public\_ip\_hostname](#output\_public\_ip\_hostname) | The Public IP hostname. |
| <a name="output_public_ip_icanhazip"></a> [public\_ip\_icanhazip](#output\_public\_ip\_icanhazip) | The Public IP address, from icanhazip.com. |
| <a name="output_public_ip_ifconfigco"></a> [public\_ip\_ifconfigco](#output\_public\_ip\_ifconfigco) | The Public IP address, from ifconfig.co. |
| <a name="output_public_ip_latitude"></a> [public\_ip\_latitude](#output\_public\_ip\_latitude) | The Latitude. |
| <a name="output_public_ip_longitude"></a> [public\_ip\_longitude](#output\_public\_ip\_longitude) | The Longitude. |
| <a name="output_public_ip_metro_code"></a> [public\_ip\_metro\_code](#output\_public\_ip\_metro\_code) | The DMA (Designated Market Area) metro code used for marketing & advertisement. |
| <a name="output_public_ip_region_code"></a> [public\_ip\_region\_code](#output\_public\_ip\_region\_code) | The Region/State code. |
| <a name="output_public_ip_region_name"></a> [public\_ip\_region\_name](#output\_public\_ip\_region\_name) | The Region/State name. |
| <a name="output_public_ip_time_zone"></a> [public\_ip\_time\_zone](#output\_public\_ip\_time\_zone) | The Time zone. |
| <a name="output_public_ip_zip"></a> [public\_ip\_zip](#output\_public\_ip\_zip) | The Zip code. |

<!-- END_TF_DOCS -->
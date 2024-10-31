#
# Copyright 2024 Emmanuel Bergerat
#

# Main output variable
output "public_ip" {
  value       = local.ifconfigco_response["ip"]
  description = "The Public IP address of the machine running this Terraform plan."
}

# Detailed variables
# / icanhazip.com
output "public_ip_icanhazip" {
  value       = chomp(data.http.icanhazip.response_body)
  description = "The Public IP address, from icanhazip.com."
}

# / ifconfig.co
output "public_ip_ifconfigco" {
  value       = local.ifconfigco_response["ip"]
  description = "The Public IP address, from ifconfig.co."
}
output "public_ip_decimal" {
  value       = local.ifconfigco_response["ip_decimal"]
  description = "The Public IP address in decimal."
}

# Address data
output "public_ip_city" {
  value       = local.ifconfigco_response["city"]
  description = "The City name."
}
output "public_ip_zip" {
  value       = local.ifconfigco_response["zip_code"]
  description = "The Zip code."
}
output "public_ip_region_code" {
  value       = local.ifconfigco_response["region_code"]
  description = "The Region/State code."
}
output "public_ip_region_name" {
  value       = local.ifconfigco_response["region_name"]
  description = "The Region/State name."
}
output "public_ip_country" {
  value       = local.ifconfigco_response["country"]
  description = "The Country name."
}
output "public_ip_country_code" {
  value       = local.ifconfigco_response["country_iso"]
  description = "The Country ISO code."
}

# Geolocation data
output "public_ip_metro_code" {
  value       = local.ifconfigco_response["metro_code"]
  description = "The DMA (Designated Market Area) metro code used for marketing & advertisement."
}
output "public_ip_latitude" {
  value       = local.ifconfigco_response["latitude"]
  description = "The Latitude."
}
output "public_ip_longitude" {
  value       = local.ifconfigco_response["longitude"]
  description = "The Longitude."
}
output "public_ip_time_zone" {
  value       = local.ifconfigco_response["time_zone"]
  description = "The Time zone."
}

# Technical data
output "public_ip_asn" {
  value       = local.ifconfigco_response["asn"]
  description = "The ASN code."
}
output "public_ip_asn_org" {
  value       = local.ifconfigco_response["asn_org"]
  description = "The ASN Organization code."
}
output "public_ip_hostname" {
  value       = local.ifconfigco_response["hostname"]
  description = "The Public IP hostname."
}

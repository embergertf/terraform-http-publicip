#
# Copyright 2024 Emmanuel Bergerat
#

# Created  on:  Oct.31st, 2024
# Created  by:  Emmanuel
# Modified on:  
# Modified by:  
# Modification: 
# Overview:
#   This module:
#   - Gives back the public IP of the machine running the Terraform script

# Get public IP
data "http" "icanhazip" {
  url = "http://icanhazip.com"
}

data "http" "ifconfigco_json" {
  url = "http://ifconfig.co/json"
}

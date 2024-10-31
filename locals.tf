locals {
  ifconfigco_response = jsondecode(data.http.ifconfigco_json.response_body)
}

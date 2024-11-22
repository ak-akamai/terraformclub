#Group Data
data "akamai_group" "my_group_id" {
    group_name  = "My group name"
    contract_id = "ctr_C-0N7RAC7"
}

output "my_group_id" {
    value = data.akamai_group.my_group_id
}

#Config Data
data "akamai_appsec_configuration" "my_configuration" {
    name = "my appsec config"
}

output "my_appsec_config" {
  value = data.akamai_appsec_configuration.my_configuration
}

#Property Data
data "akamai_properties" "get-my-properties" {
  contract_id = "ctr_C-0N7RAC7"
  group_id    = "grp_12345"
}

output "my-property-list" {
  value = data.akamai_properties.get-my-properties
}
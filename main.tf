#Group Data
data "akamai_group" "my_group_id" {
    group_name  = "jaesquiv"
    contract_id = "1-1NC95D"
}

output "my_group_output" {
    value = data.akamai_group.my_group_id
}
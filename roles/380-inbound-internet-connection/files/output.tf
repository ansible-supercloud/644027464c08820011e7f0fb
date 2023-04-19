output "inbound-internet-connection_name" {
  description = "The name of the resource group"
  value = module.inbound-internet-connection.name
}
output "inbound-internet-connection_id" {
  description = "The id of the resource group"
  value = module.inbound-internet-connection.id
}
output "inbound-internet-connection_group" {
  description = "The resource group object"
  value = module.inbound-internet-connection.group
}
output "inbound-internet-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.inbound-internet-connection.provision
}
output "inbound-internet-connection_region" {
  description = "the value of inbound-internet-connection_region"
  value = module.inbound-internet-connection.region
}

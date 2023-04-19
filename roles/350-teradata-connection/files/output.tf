output "teradata-connection_name" {
  description = "The name of the resource group"
  value = module.teradata-connection.name
}
output "teradata-connection_id" {
  description = "The id of the resource group"
  value = module.teradata-connection.id
}
output "teradata-connection_group" {
  description = "The resource group object"
  value = module.teradata-connection.group
}
output "teradata-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.teradata-connection.provision
}
output "teradata-connection_region" {
  description = "the value of teradata-connection_region"
  value = module.teradata-connection.region
}

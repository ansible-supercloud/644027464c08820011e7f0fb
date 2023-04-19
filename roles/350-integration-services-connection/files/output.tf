output "integration-services-connection_name" {
  description = "The name of the resource group"
  value = module.integration-services-connection.name
}
output "integration-services-connection_id" {
  description = "The id of the resource group"
  value = module.integration-services-connection.id
}
output "integration-services-connection_group" {
  description = "The resource group object"
  value = module.integration-services-connection.group
}
output "integration-services-connection_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.integration-services-connection.provision
}
output "integration-services-connection_region" {
  description = "the value of integration-services-connection_region"
  value = module.integration-services-connection.region
}

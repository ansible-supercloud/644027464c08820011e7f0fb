output "self-hosted-integration-runtime_name" {
  description = "The name of the resource group"
  value = module.self-hosted-integration-runtime.name
}
output "self-hosted-integration-runtime_id" {
  description = "The id of the resource group"
  value = module.self-hosted-integration-runtime.id
}
output "self-hosted-integration-runtime_group" {
  description = "The resource group object"
  value = module.self-hosted-integration-runtime.group
}
output "self-hosted-integration-runtime_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.self-hosted-integration-runtime.provision
}
output "self-hosted-integration-runtime_region" {
  description = "the value of self-hosted-integration-runtime_region"
  value = module.self-hosted-integration-runtime.region
}

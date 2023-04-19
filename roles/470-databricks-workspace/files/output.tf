output "databricks-workspace_name" {
  description = "The name of the resource group"
  value = module.databricks-workspace.name
}
output "databricks-workspace_id" {
  description = "The id of the resource group"
  value = module.databricks-workspace.id
}
output "databricks-workspace_group" {
  description = "The resource group object"
  value = module.databricks-workspace.group
}
output "databricks-workspace_provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value = module.databricks-workspace.provision
}
output "databricks-workspace_region" {
  description = "the value of databricks-workspace_region"
  value = module.databricks-workspace.region
}

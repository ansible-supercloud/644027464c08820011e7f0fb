module "databricks-workspace" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-databricks-workspace?ref=v1.0.0"

  provision = var.databricks-workspace_provision
  region = var.region
  resource_group_name = var.databricks-workspace_name
}

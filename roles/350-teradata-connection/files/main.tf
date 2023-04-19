module "teradata-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-teradata-connection?ref=v1.0.0"

  provision = var.teradata-connection_provision
  region = var.region
  resource_group_name = var.teradata-connection_name
}

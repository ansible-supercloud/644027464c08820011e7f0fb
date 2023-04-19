module "integration-services-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-integration-services-connection?ref=v1.0.0"

  provision = var.integration-services-connection_provision
  region = var.region
  resource_group_name = var.integration-services-connection_name
}

module "self-hosted-integration-runtime" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-self-hosted-integration-runtime?ref=v1.0.0"

  provision = var.self-hosted-integration-runtime_provision
  region = var.region
  resource_group_name = var.self-hosted-integration-runtime_name
}

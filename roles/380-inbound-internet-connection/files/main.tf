module "inbound-internet-connection" {
  source = "github.com/Client-Engineering-Industry-Squad-1/terraform-inbound-internet-connection?ref=v1.0.0"

  provision = var.inbound-internet-connection_provision
  region = var.region
  resource_group_name = var.inbound-internet-connection_name
}

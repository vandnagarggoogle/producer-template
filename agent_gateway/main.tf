module "agent_gateway" {
  source              = "github.com/GoogleCloudPlatform/terraform-google-agent-gateway?ref=v0.1.0"

  project_id   = var.tenant_project_number
  gateway_name = var.agent_gateway_id
  location     = var.location

  description = var.description
  labels      = var.labels == "" ? {} : jsondecode(var.labels)
  protocols   = var.protocols == "" ? ["MCP"] : split(",", var.protocols)
  registries  = var.registries == "" ? [] : split(",", var.registries)

  # Mapping dynamic blocks to module inputs
  network_config_egress_network_attachment = var.network_attachment
  google_managed_governed_access_path      = var.governed_access_path
  self_managed_resource_uri                = var.resource_uri
}

# The IAM binding remains separate as it is not managed by the module
resource "google_project_iam_member" "dns_admin" {
  count   = var.agent_gateway_p4sa == null ? 0 : 1
  project = var.tenant_project_number
  role    = "roles/dns.admin"
  member  = "serviceAccount:${var.agent_gateway_p4sa}"
}

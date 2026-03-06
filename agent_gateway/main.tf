resource "google_network_services_agent_gateway" "this" {
  provider = google-beta
  name     = var.agent_gateway_id
  location = var.location
  project  = var.tenant_project_number

  labels      = var.labels == "" ? {} : jsondecode(var.labels)
  description = var.description
  protocols   = var.protocols == "" ? [] : split(",", var.protocols)
  registries  = var.registries == "" ? [] : split(",", var.registries)

  dynamic "network_config" {
    for_each = var.network_attachment != null ? [1] : []
    content {
      egress {
        network_attachment = var.network_attachment
      }
    }
  }

  dynamic "google_managed" {
    for_each = var.governed_access_path != null ? [1] : []
    content {
      governed_access_path = var.governed_access_path
    }
  }

  dynamic "self_managed" {
    for_each = var.resource_uri != null ? [1] : []
    content {
      resource_uri = var.resource_uri
    }
  }
}

resource "google_project_iam_member" "dns_admin" {
  count   = var.agent_gateway_p4sa == null ? 0 : 1
  project = var.tenant_project_number
  role    = "roles/dns.admin"
  member  = "serviceAccount:${var.agent_gateway_p4sa}"
}

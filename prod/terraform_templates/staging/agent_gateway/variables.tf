variable "agent_gateway_id" {
  description = "Short name of the AgentGateway resource to be created."
  type        = string
  default     = "agent-gateway"
}

variable "location" {
  description = "The location (region) for the AgentGateway."
  type        = string
  default     = "us-central1"
}

variable "tenant_project_number" {
  description = "The tenant project ID to deploy to."
  type        = string
}

variable "labels" {
  description = "Set of label tags associated with the AgentGateway resource. Format: JSON encoded string."
  type        = string
  default     = ""
}

variable "description" {
  description = "A free-text description of the resource. Max length 1024 characters."
  type        = string
  default     = null
}

variable "protocols" {
  description = "List of protocols supported by an Agent Gateway. PROTOCOL_UNSPECIFIED, MCP. Format: val1,val2,val3,..."
  type        = string
  default     = "MCP"
}

variable "registries" {
  description = "A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway. Format: val1,val2,val3,..."
  type        = string
  default     = ""
}

variable "network_attachment" {
  description = "The URI of the Network Attachment resource for egress."
  type        = string
  default     = null
}

variable "governed_access_path" {
  description = "GovernedAccessPath for Google Managed deployment mode. If set, resource_uri must be null. AGENT_TO_ANYWHERE, CLIENT_TO_AGENT"
  type        = string
  default     = "AGENT_TO_ANYWHERE"
}

variable "resource_uri" {
  description = "Resource URI for Self Managed deployment mode. If set, governed_access_path must be null."
  type        = string
  default     = null
}

variable "agent_gateway_p4sa" {
  description = "The Agent Gateway P4SA in the consumer project."
  type        = string
  default     = null
}

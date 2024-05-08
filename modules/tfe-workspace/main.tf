terraform {
  required_version = ">= 1.4.0, < 2.0.0"
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

# variable "organization_name" {
#   description = "Please provide the organization name"
#   type        = string
# }
# variable "project_id" {
#   description = "Please provide the project ID"
#   type        = string
# }
# variable "workspace_name" {
#   description = "Please provide the workspace name"
#   type        = string
# }
variable "tag_names" {
  description = "Please list the tags for this workspace, if any"
  type        = list(string)
  default     = []
}

resource "tfe_workspace" "workspace" {
  # name              = var.workspace_name
  # organization      = var.organization_name
  # project_id        = var.project_id
  tag_names = var.tag_names
}

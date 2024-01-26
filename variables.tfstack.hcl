# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "identity_token_file" {
  type = string
}

variable "public_ssh_key_url" {
  type = string
}

variable "gcp_audience" {
  type = string
  description = "The fully qualified GCP identity provider name, e.g. '//iam.googleapis.com/projects/270867328173/locations/global/workloadIdentityPools/my-tfc-pool/providers/the-tfc-provider'. This is the same audience value as you've configured in the identity_token block. Google requires this audience value to be set in the service account file itself as well as the token claim."
}

variable "gcp_service_account_email" {
  type = string
}

variable "gcp_project_id" {
  type = string
}

variable "gcp_region" {
  type = string
}

variable "gcp_zone" {
  type = string
}

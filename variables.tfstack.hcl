# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "public_ssh_key_url" {
  type = string
}

variable "gcp_credentials" {
  type      = string
  ephemeral = true
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

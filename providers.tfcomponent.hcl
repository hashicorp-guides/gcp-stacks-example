# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 5.12.0"
  }

  http = {
    source  = "hashicorp/http"
    version = "~> 3.4.1"
  }
}

provider "google" "this" {
  config {
    project     = var.gcp_project_id
    region      = var.gcp_region
    zone        = var.gcp_zone
    credentials = var.gcp_credentials
  }
}

provider "http" "this" {}

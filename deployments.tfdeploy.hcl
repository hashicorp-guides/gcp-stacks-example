# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "gcp_credentials" {
    id       = "<Set to a varset ID that contains GCP credentials>"
    category = "terraform"
}

deployment "production" {
  inputs = {
    public_ssh_key_url = "<Set to a URL where your public SSH key can be read. Used for compute instance login auth>"
    gcp_credentials    = store.varset.gcp_credentials.credentials
    gcp_project_id     = "<Set to your GCP project ID>"
    gcp_region         = "us-central1"
    gcp_zone           = "us-central1-a"
  }
}

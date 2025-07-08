# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "compute" {
  source = "./compute"

  inputs = {
    public_ssh_key_url = var.public_ssh_key_url
  }

  providers = {
    google = provider.google.this
    http   = provider.http.this
  }
}

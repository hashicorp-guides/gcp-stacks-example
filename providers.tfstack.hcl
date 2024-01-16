required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 5.12.0"
  }
}

provider "google" "this" {
  config {
    project = var.gcp_project
    region  = var.gcp_region
    zone    = var.gcp_zone
    credentials = jsonencode({ todo: todo })
  }
}

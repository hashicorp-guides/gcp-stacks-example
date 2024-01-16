identity_token "gcp" {
  audience = ["gcp.workload.identity"]
}

deployment "production" {
  variables = {
    public_ssh_key_url  = "<INSERT URL TO PUB SSH KEY FOR COMPUTE INSTANCE>"
    identity_token_file = identity_token.gcp.jwt_filename
    gcp_project         = "<INSERT PROJECT ID>"
    gcp_region          = "us-central1"
    gcp_zone            = "us-central1-a"
  }
}

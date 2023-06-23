terraform {
  backend "pg" {}
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "4.3.1"
    }
  }
}

provider "keycloak" {
  # Configuration options
  client_id = "admin-cli"
  username  = var.keycloak_user
  password  = var.keycloak_password
  url       = var.keycloak_url
}

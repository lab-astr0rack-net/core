variable "keycloak_url" {
  default = "https://keycloak.lab.astr0rack.net"
}

variable "keycloak_user" {
  default = "terraform"
}

variable "keycloak_password" {
  default   = "CHANGEME"
  sensitive = true
}


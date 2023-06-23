resource "keycloak_realm" "lab" {
  realm             = "lab"
  enabled           = true
  display_name      = "lab"
  display_name_html = "<b>lab</b>"
}

resource "keycloak_oidc_identity_provider" "github" {
  realm                         = keycloak_realm.lab.realm
  alias                         = "github"
  provider_id                   = "github"
  client_id                     = var.keycloak_github_client_id
  client_secret                 = var.keycloak_github_client_secret
  token_url                     = ""
  authorization_url             = ""
  add_read_token_role_on_create = true
  backchannel_supported         = false
  default_scopes                = "read:user read:org user:email"
}

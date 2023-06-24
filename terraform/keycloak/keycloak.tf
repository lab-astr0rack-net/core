resource "keycloak_realm" "lab" {
  realm                       = "lab"
  enabled                     = true
  display_name                = "lab"
  display_name_html           = "<b>lab</b>"
  default_signature_algorithm = "RS256"
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

resource "keycloak_openid_client" "proxmox" {
  realm_id  = keycloak_realm.lab.id
  client_id = "proxmox"

  name    = "proxmox"
  enabled = true

  access_type                  = "CONFIDENTIAL"
  client_secret                = var.keycloak_proxmox_client_secret
  standard_flow_enabled        = true
  implicit_flow_enabled        = true
  direct_access_grants_enabled = true
  full_scope_allowed           = true

  valid_redirect_uris = [
    "https://proxmox.lab.astr0rack.net/*"
  ]

  login_theme = "keycloak"

}

resource "keycloak_openid_user_property_protocol_mapper" "proxmox_client_mapper" {
  realm_id  = keycloak_realm.lab.id
  client_id = keycloak_openid_client.proxmox.id
  name      = "proxmox-client-mapper"

  user_property = "username"
  claim_name    = "username"
}

resource "keycloak_authentication_flow" "github-flow" {
  realm_id = keycloak_realm.lab.id
  alias    = "github-flow"
}

resource "keycloak_authentication_execution" "cookie-execution" {
  realm_id          = keycloak_realm.lab.id
  parent_flow_alias = keycloak_authentication_flow.browser-flow.alias
  authenticator     = "auth-cookie"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "gh-execution" {
  realm_id          = keycloak_realm.lab.id
  parent_flow_alias = keycloak_authentication_flow.browser-flow.alias
  authenticator     = "identity-provider-redirector"
  requirement       = "ALTERNATIVE"

  depends_on = [
    keycloak_authentication_execution.cookie-execution
  ]
}

resource "keycloak_authentication_execution_config" "gh-config" {
  realm_id     = keycloak_realm.lab.id
  execution_id = keycloak_authentication_execution.gh-execution.id
  alias        = "github"
  config = {
    defaultProvider = "github"
  }
}

resource "keycloak_authentication_bindings" "browser_authentication_binding" {
  realm_id        = keycloak_realm.lab.id
  browser_flow  = keycloak_authentication_flow.github-flow.alias
}


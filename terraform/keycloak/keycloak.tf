resource "keycloak_realm" "lab" {
  realm             = "lab"
  enabled           = true
  display_name      = "lab"
  display_name_html = "<b>lab</b>"
}

resource "keycloak_openid_client" "backend_client" {
  realm_id                     = keycloak_realm.end_users.id
  client_id                    = "backend-client"
  name                         = "Backend Client"
  enabled                      = true
  access_type                  = "CONFIDENTIAL"
  standard_flow_enabled        = true
  service_accounts_enabled     = true
  valid_redirect_uris          = ["*"]
  valid_post_logout_redirect_uris    = ["*"]
}

resource "keycloak_openid_client_optional_scopes" "backend_client_optional_scopes" {
  realm_id     = keycloak_openid_client.backend_client.realm_id
  client_id    = keycloak_openid_client.backend_client.id
  optional_scopes       = [ ]
}

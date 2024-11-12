resource "keycloak_openid_client_scope" "admin_scope" {
  realm_id = keycloak_realm.end_users.id
  name     = "admin-scope"
  include_in_token_scope = true
  consent_screen_text = "Admin Scope"
}

resource "keycloak_openid_client_scope" "user_scope" {
  realm_id = keycloak_realm.end_users.id
  name     = "user-scope"
  include_in_token_scope = true
  consent_screen_text = "User Scope"
}

# Usuario "regular" con rol de usuario regular y contraseña inicial temporal
resource "keycloak_user" "regular_user" {
  realm_id = keycloak_realm.end_users.id
  username = "regular"
  enabled  = true

  email      = "regular@domain.com"
  first_name = "Regular"
  last_name  = "User"

  initial_password {
    value     = "RegularSecurePassword123"
    temporary = true
  }
}

# Asignación del rol "user" al usuario "regular"
resource "keycloak_user_roles" "regular_user_role" {
  realm_id = keycloak_realm.end_users.id
  user_id  = keycloak_user.regular_user.id
  role_ids    = [keycloak_role.user_role.id]
}
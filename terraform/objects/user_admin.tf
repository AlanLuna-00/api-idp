# Usuario "admin" con rol de administrador y contraseña inicial temporal
resource "keycloak_user" "admin_user" {
  realm_id = keycloak_realm.end_users.id
  username = "admin"
  enabled  = true

  email      = "admin@domain.com"
  first_name = "Admin"
  last_name  = "User"

  initial_password {
    value     = "AdminSecurePassword123"
    temporary = false
  }
}

# Asignación del rol "admin" al usuario "admin"
resource "keycloak_user_roles" "admin_user_role" {
  realm_id = keycloak_realm.end_users.id
  user_id  = keycloak_user.admin_user.id
  role_ids    = [keycloak_role.admin_role.id]
}
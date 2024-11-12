# Crear un rol para los administradores
resource "keycloak_role" "admin_role" {
  realm_id = keycloak_realm.end_users.id
  name     = "admin"
}

# Crear un rol para los usuarios regulares
resource "keycloak_role" "user_role" {
  realm_id = keycloak_realm.end_users.id
  name     = "user"
}

# Definición de roles predeterminados asignados a todos los usuarios nuevos
resource "keycloak_default_roles" "default_roles" {
  realm_id      = keycloak_realm.end_users.id
  default_roles = ["uma_authorization", keycloak_role.admin_role.name,keycloak_role.user_role.name]
}

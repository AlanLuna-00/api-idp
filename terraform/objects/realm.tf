resource "keycloak_realm" "end_users" {
  realm             = "end-users"
  enabled           = true
  display_name      = "End Users"
  display_name_html = "<b>End Users</b>"

  registration_allowed = true
  registration_email_as_username = true
  verify_email = true
  login_with_email_allowed = true
  duplicate_emails_allowed = false
  reset_password_allowed = true

  security_defenses {
    brute_force_detection {
      permanent_lockout                 = false
      max_login_failures                = 5
      wait_increment_seconds            = 60
      max_failure_wait_seconds          = 300
      failure_reset_time_seconds        = 300
    }
  }
}
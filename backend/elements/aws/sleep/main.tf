# time_sleep element
# main.tf
resource "time_sleep" "sleep" {
  create_duration = var.sleep_create_duration
}
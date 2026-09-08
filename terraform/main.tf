resource "local_file" "example" {
  filename             = "${path.module}/${var.environment}-credentials.txt"
  content              = "admin_password=test-only-hardcoded-password"
  file_permission      = "0777"
  directory_permission = "0777"
}
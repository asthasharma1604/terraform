terraform {
  required_version = ">= 1.0"
}

resource "local_file" "example" {
  filename = "${path.module}/example.txt"
  content  = "Hello! from Terraform"
}
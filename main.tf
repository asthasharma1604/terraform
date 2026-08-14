resource "aws_s3_bucket" "app" {
  bucket = "terraform-reviewer-demo-${var.environment}"

  tags = {
    Name        = "terraform-reviewer-demo"
    Environment = var.environment
  }
}

resource "aws_security_group" "app" {
  name        = "app-security-group"
  description = "Security group for application"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
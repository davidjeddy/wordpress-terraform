# AWS : VPC
resource "aws_default_vpc" "default" {

  tags {
    Name     = "wp"
    stage    = "demo"
    language = "na"
    service  = "storage"
  }
}

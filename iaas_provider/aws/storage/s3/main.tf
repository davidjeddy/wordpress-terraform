# ELB
# Referance https://davidwzhang.com/2017/03/31/asw-s3-bucket-for-elb-acces-log-with-terraform/
# Referance https://stackoverflow.com/questions/43366038/terraform-elb-s3-permissions-issue
data "aws_elb_service_account" "main" {}

resource "aws_s3_bucket" "elb_logs" {
  acl           = "private"
  bucket        = "elb-logs-9e33b5e0-a9f7-4834-887f-75499cc43678"
  force_destroy = true

  policy = <<POLICY
{
  "Id": "Policy1429136655940",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1429136633762",
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::elb-logs-9e33b5e0-a9f7-4834-887f-75499cc43678/*",
      "Principal": {
        "AWS": [
           "${data.aws_elb_service_account.main.arn}"
        ]
      }
    }
  ]
}
POLICY

  region = "${var.region}"

  tags {
    Name     = "wp"
    stage    = "demo"
    language = "na"
    service  = "storage"
  }
}

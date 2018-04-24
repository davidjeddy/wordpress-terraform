# AWS EFS
module "efs_mount" {
  source = "github.com/manheim/tf_efs_mount"

  name    = "wp_efs_fs"
  subnets = "${var.subnets}"#"subnet-abcd1234,subnet-efgh5678"
  vpc_id  = "${var.vpc_id}" #"vpc-abcd1234"
}

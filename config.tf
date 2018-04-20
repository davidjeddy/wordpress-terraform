provider "aws" {
  profile = "default"
  region  = "${module.compute.region}"
}

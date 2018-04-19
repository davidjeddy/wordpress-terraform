# wordpress web server instance
resource "aws_instance" "wordpress" {
  ami = "${lookup(var.wordpress-images, var.region)}"

  # free tier instance
  instance_type = "t2.micro"

  # list of securit groups for the instance
  security_groups = [
    "${aws_security_group.wordpress_security_group.name}",
  ]

  availability_zone = "${lookup(var.zones, var.region)}"

  key_name = "aws"

  # add a public IP address
  associate_public_ip_address = true

  root_block_device = {
    "delete_on_termination" = false
    "volume_type" = "standard"
    "volume_size" = 40
  }

  tags {
    name = "Wordpress Server"
  }
}

resource "aws_eip" "wordpress_eip" {
  instance = "${aws_instance.wordpress.id}"
  vpc = false
}

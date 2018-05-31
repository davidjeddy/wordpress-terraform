resource "aws_db_instance" "wp_db" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.2"
  instance_class       = "db.t2.micro"
  name                 = "wp_db"
  username             = "wp_db_user"
  password             = "wp_db_pass"
  parameter_group_name = "default.mariadb10.2"
  skip_final_snapshot  = true

  # list of security groups for the instance
  vpc_security_group_ids = [
    "${aws_security_group.wp_db_security_group.id}",
  ]

  tags {
    Name     = "wp"
    stage    = "demo"
    language = "sql"
    service  = "sql"
  }
}

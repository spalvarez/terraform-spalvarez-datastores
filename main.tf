resource "aws_db_instance" "example" {
    identifier_prefix = "${var.db_name}mysql"
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    name = "${var.db_name}database"
    username = "admin"
    skip_final_snapshot = true

    password = var.db_admin_password
}
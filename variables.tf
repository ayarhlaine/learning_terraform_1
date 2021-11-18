variable "aws_instance_name" {
    type = string
    description = "Value of the Name tag for the EC2 instance"
    default = "my-example-instance"
}

variable "aws_db_name" {
    type = string
    description = "Value of the Name tag for Postgres Sql"
    default = "exampledb"
}

variable "aws_db_username" {
    type = string
    description = "Value of the User Name tag for Postgres Sql"
    default = "root"
}

variable "aws_db_password" {
    type = string
    description = "Value of the Password tag for Postgres Sql"
    default = "hFGXKcmScLjSRMKe"
}
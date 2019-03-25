/* this is a multi
comment */

provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "master" {
  ami           = "${var.ami}"
  instance_type = "${var.master_instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "swarmServices"
    Owner = "tonybutzer@gmail.com"
  }
  key_name                    = "${var.key_name}"

  iam_instance_profile                    ="${var.iam_role}"


  security_groups = ["${var.security_group}"]
}


resource "aws_instance" "ship1" {

  ami           = "${var.ami}"

  instance_type = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "ship1"
    Owner = "tonybutzer@gmail.com"
  }
  iam_instance_profile                    ="${var.iam_role}"
  security_groups = ["${var.security_group}"]
}
resource "aws_instance" "ship2" {

  ami           = "${var.ami}"

  instance_type = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "ship2"
    Owner = "tonybutzer@gmail.com"
  }
  iam_instance_profile                    ="${var.iam_role}"
  security_groups = ["${var.security_group}"]
}
resource "aws_instance" "ship3" {

  ami           = "${var.ami}"

  instance_type = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  tags {
    Name = "ship3"
    Owner = "tonybutzer@gmail.com"
  }
  iam_instance_profile                    ="${var.iam_role}"
  security_groups = ["${var.security_group}"]
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "590451-deployer"
    key    = "590451/"
    region = "us-east-1"
  }
}

resource "aws_security_group" "test" {
	name	= "590451-test"
	ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "590451"
  }
	}
	
output "sg_id" {
	value = "${aws_security_group.test.id}"
	}

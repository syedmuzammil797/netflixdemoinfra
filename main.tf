provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0cb91c7de36eed2cb"
instance_type = "t2.medium"
key_name = "Fresh-Terra"
vpc_security_group_ids = ["sg-0080b0cba614ff114"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

locals {
  ami = var.ami != "" ? var.ami : join("", data.aws_ami.default.*.image_id)
}

data "aws_ami" "default" {
  count       = var.ami == "" ? 1 : 0
  most_recent = "true"

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}


resource "aws_instance" "default" {
  ami               = local.ami
  availability_zone = var.availability_zone
  instance_type     = var.instance_type

  subnet_id                   = var.subnet
  associate_public_ip_address = var.associate_public_ip_address
  security_groups             = var.security_groups

  tags = merge(
    var.tags,
    { Name = "${var.tags.prefix}-${var.tags.env}-${var.tags.component}-ec2" }
  )
}

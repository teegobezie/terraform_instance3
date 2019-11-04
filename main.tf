# Backend state file storage
# terraform {
# 	backend "s3" {
# 		bucket = "terraform-state-files-tee"
# 		region = "us-east-1"
# 		profile = "default"
# 		key = "terraform.tfstate"
# 		}
# }

# Provider
provider "aws" {
	region = "us-east-1"
	profile = "default"
}

resource "aws_instance" "instance6" {
	ami = "${var.myimage}"
	instance_type = "${var.instance_type}"

	tags = "${local.common_tags}"

	subnet_id = "subnet-1a551c34"
	security_groups = ["sg-e35699bb"]

	key_name = "teekey1234"
	# key_name = "${var.key}"

  # root_block_device {
  #  volume_type = "gp2"
  #  volume_size = "${var.root_volume_size}"
  #}

  # ebs_block_device {
	#	device_name = "/dev/sdh"
  #  volume_type = "gp2"
  #  volume_size = "${var.data_volume_size}"
  #}
}

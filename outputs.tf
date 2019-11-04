output "public-ip" {
  value = "${aws_instance.instance6.public_ip}"
}

output "hostname" {
  value = "${aws_instance.instance6.tags.Name}"
}

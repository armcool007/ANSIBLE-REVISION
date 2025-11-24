provider "aws" {
	region="ap-south-1"
}
variable "amiid" {
	default="ami-01b6d88af12965bb6"
}
variable "instance_type" {
	default="t2.nano"
}
variable "key" {
	default="ubuntu"
}
variable "username" {
  default="ec2-user"
}
resource "aws_instance" "ansi-terra" {
	tags={
		Name="ansi-terra"
	}
	ami=var.amiid
	instance_type=var.instance_type
	key_name=var.key
  provisioner "local-exec" {
    command= "export ANSIBLE_HOST_KEY_CHECKING=FALSE; sleep 150; ansible-playbook master.yml -i ${aws_instance.ansi-terra.private_ip}, -u=${var.username}  --key-file=/etc/ansible/${var.key}.pem"
  }
}


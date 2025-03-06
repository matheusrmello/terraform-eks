resource "aws_key_pair" "bastion_ssh" {
  key_name   = "${var.project_name}-bastion-ssh"
  public_key = file("~/.ssh/bastion.pub")
  tags       = var.tags
}
resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Security group for bastion host"
  vpc_id      = var.vpc

  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all traffic to anywhere"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}



resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  key_name                    = aws_key_pair.bastion_ssh.id
  subnet_id                   = var.public_subnet
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt install ansible -y
              EOF

  tags = merge(
    var.tags,
    {
      Name = "bastion"
    }
  )
}
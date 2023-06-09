###############################################
#  AWS EC2 INSTANCE                           #
###############################################
resource "aws_instance" "web01" {
  connection {
    type = "ssh"
    user = "centos"
    host = self.public_ip
  }
  ami                    = var.aws_amis
  instance_type          = var.instance_type
  key_name               = aws_key_pair.user_key.key_name
  vpc_security_group_ids = [aws_security_group.web_and_ssh.id]
  subnet_id              = aws_subnet.subnet01.id
  #user_data                   = filebase64("bootstrap_script/bootstrap_script.sh")
  associate_public_ip_address = true
  availability_zone           = var.availability_zone01

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name = "student-2"
  }
}

###############################################
#  ELASTIC IP                                  #
###############################################
resource "aws_eip" "lb" {
  instance = aws_instance.web01.id
  vpc      = true
}

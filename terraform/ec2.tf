resource "aws_instance" "jenkins_master" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  key_name      = var.key_name
  security_groups = [aws_security_group.allow_all.name]
  tags = { Name = "Jenkins-Master" }
}

resource "aws_instance" "jenkins_agent" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  key_name      = var.key_name
  security_groups = [aws_security_group.allow_all.name]
  tags = { Name = "Jenkins-Agent" }
}

resource "aws_instance" "ansible_controller" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  key_name      = var.key_name
  security_groups = [aws_security_group.allow_all.name]
  tags = { Name = "Ansible-Controller" }
}

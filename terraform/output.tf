output "jenkins_master_public_ip" {
  value = aws_instance.jenkins_master.public_ip
}

output "jenkins_agent_public_ip" {
  value = aws_instance.jenkins_agent.public_ip
}

output "ansible_controller_public_ip" {
  value = aws_instance.ansible_controller.public_ip
}

build {
  sources = [
    "source.amazon-ebs.example"
  ]

  # provisioner "shell" {
  #   inline = [
  #     "sudo yum -y update",
  #     "sudo yum -y install httpd",
  #     "sudo systemctl start httpd && sudo systemctl enable httpd"
  #   ]
  # }

  provisioner "ansible" {
    playbook_file = "./playbook.yml"
  }
}

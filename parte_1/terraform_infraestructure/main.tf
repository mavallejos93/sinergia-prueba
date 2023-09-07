provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-029c55fc242d7f0ec"
  instance_type = "t2.nano"

  tags = {
    Name = "jenkins"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y openjdk-11-jdk
              wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
              sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
              apt update
              apt install -y jenkins
              systemctl start jenkins
              EOF
}

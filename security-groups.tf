resource "aws_security_group" "ansible_server" {
  name        = "ansible_server"
  description = "Allow connection for ansible inbound traffic"
  vpc_id      = data.aws_vpc.lab_vpc.id

  ingress {
    description      = "Allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["157.45.242.138/32"]
    #ipv6_cidr_blocks = ["2409:4071:d07:fcdc:94b6:d54:411:1b1/64"]
    
  }
ingress {
    description      = "Allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["157.45.242.138/32"]
    #ipv6_cidr_blocks = ["2409:4071:d07:fcdc:94b6:d54:411:1b1/64"]
    
  }
  ingress {
    description      = "Allow port 3306"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["157.45.242.138/32"]
    #ipv6_cidr_blocks = ["2409:4071:d07:fcdc:94b6:d54:411:1b1/64"]
    
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"] 
  }

  tags = {
    Name = "allow_tls"
  }
}
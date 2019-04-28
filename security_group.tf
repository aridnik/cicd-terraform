resource "aws_security_group" "ardnik_sg" {
  name        = "ardnik_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.ardnik_vpc.id}"


  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 0
    to_port     = 65535 
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ardnik-sg"
  }
}
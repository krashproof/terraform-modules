resource "aws_security_group" "this" {
  description = "LetsEncrypt CertBot SSL Cert renewals"
  name        = "${var.name}-sg"	
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPv4 HTTP for LetsEncrypt CertBot SSL Cert renewals"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    ipv6_cidr_blocks = ["::/0"]
    description = "Allow IPv6 HTTP for LetsEncrypt CertBot SSL Cert renewals"
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow IPv4 HTTPS for LetsEncrypt CertBot SSL Cert renewals"
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    ipv6_cidr_blocks = ["::/0"]
    description = "Allow IPv6 HTTPS for LetsEncrypt CertBot SSL Cert renewals"
  }

}

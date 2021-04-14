resource "aws_security_group" "this" {
  description = "Allow SSH"
  name        = "${var.name}-sg"	
  vpc_id      = var.vpc_id

  dynamic ingress {
    for_each = setproduct(var.source_list, var.service_list)
    #for_each = var.source_list
    content {
      from_port   = ingress.value.1.port
      to_port     = ingress.value.1.port
      protocol    = ingress.value.1.protocol
      cidr_blocks = [ingress.value.0.cidr]
      description = "${ingress.value.1.servicename} from ${ingress.value.0.sourcename}"
    }
  }

  egress {
    from_port    = 0
    to_port      = 0
    protocol     = "-1"
    cidr_blocks  = ["0.0.0.0/0"]
  }

}

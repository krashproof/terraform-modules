resource "aws_security_group" "this" {
  description = "Allow K8s Services"
	name        = "${var.name}-sg"	
  vpc_id      = var.vpc_id

  dynamic ingress {
    for_each = setproduct(var.source_list, var.service_list)
    content {
      from_port   = ingress.value.1.from_port
      to_port     = ingress.value.1.to_port
      protocol    = ingress.value.1.protocol
      cidr_blocks = [ingress.value.0.cidr]
      description = "${ingress.value.1.servicename} from ${ingress.value.0.sourcename}"
    }
  }
}

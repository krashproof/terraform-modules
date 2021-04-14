resource "aws_spot_fleet_request" "this" {
  iam_fleet_role  = var.iam_fleet_role
  target_capacity = var.target_capacity
  valid_until     = var.valid_until
  instance_interruption_behaviour = var.instance_interruption_behaviour

  dynamic launch_specification {
    for_each = setproduct(var.launch_specifications, var.subnet_ids)
    content {
      instance_type          = launch_specification.value.0.instance_type
      ami                    = var.ami
      spot_price             = launch_specification.value.0.spot_price
      key_name               = var.key_name
      subnet_id              = launch_specification.value.1
      vpc_security_group_ids = var.vpc_security_group_ids
      user_data              = base64encode(var.user_data)
      iam_instance_profile   = var.iam_instance_profile
      tags = {
        Name = var.instance_name
      }
    }
  }

}

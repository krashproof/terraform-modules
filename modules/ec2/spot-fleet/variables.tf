variable "iam_fleet_role" {
  description = "ARN of IAM role for spot requests"
  type        = string
}

variable "subnet_ids" {
  description = "List of VPC subnets to launch into"
  type        = list
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to attach"
  type        = list
}

variable "target_capacity" {
  description = "number of EC2 spot instance to launch"
  type        = string
}

variable "valid_until" {
  description = "expiration date of spot request"
  type        = string
}

variable "ami" {
  description = "instance ami"
  type        = string
}

variable "key_name" {
  description = "ssh pubkey name"
  type        = string
}

variable "instance_name" {
  description = "spot instance name"
  type        = string
}

variable "instance_interruption_behaviour" {
  description = "spot instance interruption behaviour"
  type        = string
  default = "terminate"
}

variable "user_data" {
  description = "spot instance launch_specification UserData"
  type        = string
}

variable "iam_instance_profile" {
  description = "ec2 instance profile"
  type        = string
}

variable "launch_specifications" {
  description = "list of specifications for EC2 instances"
  type        = list
  default = [
    {
      instance_type     = "t3a.nano"
      ami               = "ami-0bdf93799014acdc4"
      spot_price        = "0.001"
      key_name          = "none"
    }
  ]
}

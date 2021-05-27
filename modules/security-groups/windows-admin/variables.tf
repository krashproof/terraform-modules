variable "vpc_id" {
  description = "The vpc_id where the sg is created"
  type        = string
}

variable "name" {
  description = "The name of the sg"
  type        = string
}

variable "source_list" {
  description = "list of sources for SGs"
  type        = list
}

variable "service_list" {
  description = "list of services for Windows Admin"
  type        = list
  default = [
    {
      "servicename" = "RDP",
      "from_port" = 3389
      "to_port" = 3389
      "protocol" = "tcp"
    }
  ]
}

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
  description = "list of services for Linux Admin"
  type        = list
  default = [
    {
      "servicename" = "SSH",
      "port" = 22
      "protocol" = "tcp"
    }
  ]
}

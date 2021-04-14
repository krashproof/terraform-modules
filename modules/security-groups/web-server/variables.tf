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
  description = "list of services for Web Server"
  type        = list
  default = [
    {
      "servicename" = "HTTP",
      "port" = 80
      "protocol" = "tcp"
    },
    {
      "servicename" = "HTTPS",
      "port" = 443
      "protocol" = "tcp"
    }
  ]
}

variable "vpc_id" {
  description = "The vpc_id where the sg is created"
	type        = string
}

variable "name" {
  description = "The name of the resource"
	type        = string
}

variable "source_list" {
  description = "list of sources for SGs"
  type        = list
}

variable "service_list" {
  description = "list of services for Unifi"
  type        = list
  default = [
    {
      "servicename" = "Unifi Controller Web",
      "port" = 8443
      "protocol" = "tcp"
    },
    {
      "servicename" = "Unifi Controller Device Mgmt",
      "port" = 8080
      "protocol" = "tcp"
    },
    {
      "servicename" = "Unifi Controller Device Discovery",
      "port" = 1001
      "protocol" = "udp"
    },
    {
      "servicename" = "Unifi stun",
      "port" = 3478
      "protocol" = "udp"
    },
    {
      "servicename" = "Unifi Web HTTP Redirect",
      "port" = 8880
      "protocol" = "tcp"
    },
    {
      "servicename" = "Unifi Web HTTPS Redirect",
      "port" = 8843
      "protocol" = "tcp"
    },
    {
      "servicename" = "Unifi mobile speed test",
      "port" = 6789
      "protocol" = "tcp"
    }
  ]
}

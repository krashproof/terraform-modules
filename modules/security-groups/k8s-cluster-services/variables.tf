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
  description = "list of services for K8s"
  type        = list
  default = [
    {
      "servicename" = "K8s API Server",
      "from_port" = 6443
      "to_port" = 6443
      "protocol" = "tcp"
    },
    {
      "servicename" = "K8s etcd Server Client API",
      "from_port" = 2379
      "to_port" = 2380
      "protocol" = "tcp"
    },
    {
      "servicename" = "K8s kubelet API",
      "from_port" = 10250
      "to_port" = 10250
      "protocol" = "udp"
    },
    {
      "servicename" = "K8s kube-scheduler",
      "from_port" = 10251
      "to_port" = 10251
      "protocol" = "udp"
    },
    {
      "servicename" = "K8s kube-controler-manager",
      "from_port" = 10252
      "to_port" = 10252
      "protocol" = "tcp"
    },
    {
      "servicename" = "K8s NodePort Services",
      "from_port" = 3000
      "to_port" = 32767
      "protocol" = "tcp"
    }
  ]
}

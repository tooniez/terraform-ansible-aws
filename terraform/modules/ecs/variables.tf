variable env {
  description = "Environment prefix"
}

variable container_port {
  description = "Port on which the container is listening"
}

variable vpc_id {
  description = "ID of the VPC"
}

variable subnet_ids {
  description = "IDs of the subnets"
}

variable container_name {
  description = "Name of the container"
}

variable container_image {
  description = "Docker image to use for the container"
}

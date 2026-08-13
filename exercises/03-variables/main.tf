terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
provider "docker" {}

variable "docker_container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "docker-nginx"
}

locals {
  docker_image_name = "nginx:latest"
}

resource "docker_image" "nginx" {
  name = local.docker_image_name
}

resource "docker_container" "nginx" {
  name  = var.docker_container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

output "docker_image_id" {
  value = docker_image.nginx.image_id
}

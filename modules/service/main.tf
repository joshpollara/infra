variable "name" {
  type = string
}

variable "replicas" {
  type    = number
  default = 2
}

resource "terraform_data" "service" {
  input = { name = var.name, replicas = var.replicas }
}

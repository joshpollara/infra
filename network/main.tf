resource "terraform_data" "vpc" {
  input = { cidr = "10.0.0.0/16" }
}

resource "terraform_data" "private_subnet" {
  input = { cidr = "10.0.1.0/24", vpc = terraform_data.vpc.output.cidr }
}

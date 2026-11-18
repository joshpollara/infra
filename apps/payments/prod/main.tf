module "payments" {
  source   = "../../../modules/service"
  name     = "payments-prod"
  replicas = 4
}

resource "terraform_data" "events_queue" {
  input = { name = "payments-events", retention_hours = 72 }
}

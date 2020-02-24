variable "credentials" {
  default = "~/.gcp/account.json"
  description = "File pathname to GCP credentials."
}

variable "project" {
  default = "ansible-terraform-ssot-demo"
  description = "GCP project ID."
}

variable "region" {
  default = "northamerica-northeast1"
  description = "GCP project region."
}

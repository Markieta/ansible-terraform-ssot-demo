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

variable "vm_name" {
  default = "vm1"
  description = "VM instance name."
}

variable "vm_machine_type" {
  default = "n1-standard-1"
  description = "VM machine type."
}

variable "vm_zone" {
  default = "northamerica-northeast1-c"
  description = "GCP zone for VM to be created in."
}

variable "vm_tags" {
  default = "dev"
  description = "Tags to be attached to the VM instance."
}

variable "vm_boot_disk_image" {
  default = "centos-cloud/centos-7"
  description = "OS installation image."
}

variable "vm_network_interface_network" {
  default = "default"
  description = "Network name to be attached to VM instance's interface."
}
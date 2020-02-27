variable "credentials" {
  default = "/home/markieta/.gcp/account.json"
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

variable "compute_address_name" {
  default = "ipv4-address"
  description = "Name of the external IP address."
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
  default = ["dev"]
  description = "Tags to be attached to the VM instance."
}

variable "gce_ssh_user" {
  default = "markieta"
  description = "User account to create and copy SSH key to."
}

variable "gce_ssh_pub_key_file" {
  default = "/home/markieta/.ssh/arctiqchris.pub"
  description = "Path to SSH public key to copy to new VM."
}

variable "vm_boot_disk_image" {
  default = "centos-cloud/centos-7"
  description = "OS installation image."
}

variable "vm_network_interface_network" {
  default = "default"
  description = "Network name to be attached to VM instance's interface."
}

variable "tower_curl" {
  default = "curl -f -k -H 'Content-Type: application/json' -XPOST --user "
  description = "Curl command and options to request job launch on Tower."
}

variable "tower_username" {
  default = "null"
  description = "Tower username to launch job."
}

variable "tower_password" {
  default = "null"
  description = "Tower password to launch job."
}

variable "tower_launch_url" {
  default = "https://tower/api/v2/job_templates/7/launch/"
  description = "URL to Tower API to launch specific job."
}

variable "initiator" {
  default = true
  description = "Whether Terraform is initiating this run."
}

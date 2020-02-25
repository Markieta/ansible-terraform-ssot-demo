provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  tags = var.vm_tags

  boot_disk {
    initialize_params {
      image = var.vm_boot_disk_image
    }
  }

  network_interface {
    network = var.vm_network_interface_network
  }
}

resource "null_resource" "tower" {
  depends_on = [google_compute_instance.default]

    provisioner "local-exec" {
      command = "${var.tower_curl} ${var.tower_username}:${var.tower_password} ${var.tower_launch_url}"
    }
}
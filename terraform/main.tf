provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_compute_address" "default" {
  name = var.compute_address_name
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  tags = var.vm_tags

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }

  boot_disk {
    initialize_params {
      image = var.vm_boot_disk_image
    }
  }

  network_interface {
    network = var.vm_network_interface_network
    access_config {
      nat_ip = google_compute_address.default.address
    }
  }
}

#resource "null_resource" "tower" {
#  depends_on = [google_compute_instance.default]
#
#    provisioner "local-exec" {
#      command = "${var.tower_curl} ${var.tower_username}:${var.tower_password} ${var.tower_launch_url}"
#    }
#}
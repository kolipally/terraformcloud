provider "google" {
  project = "var.project"
  region  = "us-central1"
}
variable "machine" {
  type    = string
  default = "f1-micro"
}
variable "project" {
  type = string
}
resource "google_compute_instance" "vm"{
  name         = "instance1"
  machine_type = "var.machine"
  zone         = "us-central-1a"
  network_interface {
    network = "default"
  }
  boot_disk {
    initialize_params {
      image = "rhel-7-v20210916"
    }
  }
}

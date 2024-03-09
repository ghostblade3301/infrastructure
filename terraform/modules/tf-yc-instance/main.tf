resource "yandex_compute_instance" "vm-1" {
  name = var.name
  platform_id = var.platform_id
  zone = var.zone

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.disk_size
    }
  }

  scheduling_policy {
      preemptible = var.scheduling_policy_preemptible
    }

  network_interface {
    subnet_id = var.subnet_ids["${var.zone}"].subnet_id
    nat = true
  }

  metadata = {
    user-data = "${file("~/Devops/infrastucture/metadata.txt")}"
    serial-port-enable = 1
  }
}
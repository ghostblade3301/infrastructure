module "yandex_compute_network" {
  source = "../tf-yc-network"
}

resource "yandex_compute_instance" "vm-1" {
  name = "chapter5-lesson2-std-026-35"
  platform_id = var.platform_id
  zone = var.zone

  resources {
    cores  = 2
    memory = 2
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
    subnet_id = module.yandex_compute_network.yandex_vpc_subnets[var.zone].subnet_id
    nat = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
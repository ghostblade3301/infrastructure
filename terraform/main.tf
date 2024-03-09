module "yandex_compute_network" {
  source = "./modules/tf-yc-network"
  network_zones = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
}

module "yandex_compute_instance" {
  source = "./modules/tf-yc-instance"
  subnet_ids = module.yandex_compute_network.subnets
}

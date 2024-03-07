# Модуль для виртуальной машины
- В файле main.tf мы импортируем сетевой модуль: yandex_compute_network.
- В нем же мы настраиваем конфигурацию виртуальной машины.
- В файле variables.tf указаны переменные для настройки вируальной машины
```
variable "zone" {
  type = string
  default = "ru-central1-a"
  description = "zone of availability"
}

variable "image_id" {
  type = string
  default = "fd80qm01ah03dkqb14lc"
  description = "yandex image id"
}

variable "platform_id" {
  type = string
  default = "standard-v1"
  description = "platform id"
}

variable "scheduling_policy_preemptible" {
  type = bool  
  default = false
  description = "scheduling policy preemptible"
}

variable "disk_size" {
  type = number  
  default = 30
  description = "scheduling policy preemptible"
}
```
# Имя инстанса
variable "name" {
  description = "name of the instance"
  type        = string
  default     = "chapter5-lesson2-std-026-35"
}

# Переменная зоны доступности, где будет создана виртуальная машина
variable "zone" {
  type = string
  default = "ru-central1-a"
  description = "zone of availability"
}

# id образа
variable "image_id" {
  type = string
  default = "fd80qm01ah03dkqb14lc"
  description = "yandex image id"
}

# Размер оперативной памяти
variable "memory" {
  description = "memory size"
  type        = number
  default     = 2
}

# Количество ядер
variable "cores" {
  description = "amount of cpu cores"
  type        = number
  default     = 2
}

# id платформы (тип виртуальной машины)
variable "platform_id" {
  type = string
  default = "standard-v1"
  description = "platform id"
}

# Переменная не разрешающая перезагрузку вм
variable "scheduling_policy_preemptible" {
  type = bool  
  default = false
  description = "scheduling policy preemptible"
}

# Размер диска
variable "disk_size" {
  type = number  
  default = 30
  description = "disk size variable"
}

# Переменная с id подсетей
variable "subnet_ids" {
  description = "variable contains subnet id's"
}
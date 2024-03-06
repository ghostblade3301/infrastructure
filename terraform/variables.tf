variable "cloud_id" {
  type = string
  default = "b1g3jddf4nv5e9okle7p"
  description = "yandex cloud id"
}
  
variable "folder_id" {
  type = string
  default = "b1grhb62q2qmql9pdc9p"
  description = "yandex folder id"
}

variable "IAM_token" {
  type = string
  description = "yandex iam token"
}

variable "zone" {
  type = string
  default = "ru-central1-a"
  description = "yandex zone"
}

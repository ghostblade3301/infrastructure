output "yandex_vpc_subnets" {
  description = "yandex cloud subnets map"
  value = data.yandex_vpc_subnet.default
}
output "subnets" {
  description = "yandex cloud subnets map"
  value = data.yandex_vpc_subnet.vpc_subnet
}
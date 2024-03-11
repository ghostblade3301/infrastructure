# Модуль для виртуальной машины
- В файле main.tf мы импортируем сетевой модуль: yandex_compute_network.
- В нем же мы настраиваем конфигурацию виртуальной машины.
- В файле variables.tf указаны переменные для настройки вируальной машины:
1. zone    
2. image_id
3. platform_id
4. scheduling_policy_preemptible
5. disk_size
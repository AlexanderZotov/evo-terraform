# Создание департамента
resource "cloudru_organization_unit" "test-department" {
  # Название департамента
  # Обязательный параметр
  name = "Тестовый департамент"

  # Описание департамента
  # Не обязательный параметр
  description = "Тестовый департамент"
}

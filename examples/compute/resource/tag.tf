resource "cloudru_evolution_tag" "test_tag" {
  # NOTE: Это вычисляемый параметр
  # id = "00000000-0000-0000-0000-000000000000"

  # NOTE: Это опциональный параметр, по умолчанию используется project_id указанный в секции provider
  # project_id = "00000000-0000-0000-0000-000000000000"

  # NOTE: Это обязательный параметр
  name = "test"

  # NOTE: Это обязательный параметр
  color = "red"

  # NOTE: Это опциональный параметр
  description = ""

  # NOTE: Это вычисляемый параметр
  # created_time  = "2023-10-26T10:27:04Z"

  # NOTE: Это вычисляемый параметр
  # modified_time = "2023-10-26T10:28:21Z"
}

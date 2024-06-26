resource "cloudru_evolution_subnet" "test_subnet" {
  # NOTE: Это вычисляемый параметр
  # id = "00000000-0000-0000-0000-000000000000"

  # NOTE: Это обязательный параметр
  name = "test_subnet"

  # NOTE: Это обязательный параметр
    subnet_address = "10.1.2.0/24"

  # NOTE: Это опциональный параметр
  # prefix_length = 1

  # NOTE: Это обязательный параметр
  availability_zone {
    # NOTE: Это обязательный параметр
    id = "00000000-0000-0000-0000-000000000000"

    # NOTE: Это вычисляемый параметр
    # name = "ru.AZ-1"
  }

  # NOTE: Это опциональный параметр, по умолчанию используется project_id указанный в секции provider
  project {
    # NOTE: Это опциональный параметр
    # id = "00000000-0000-0000-0000-000000000000"
  }


  # NOTE: Это обязательный параметр
  description = "created from terraform"

  # NOTE: Это опциональный параметр
  # routed_network = false

  # NOTE: Это обязательный параметр
  default_gateway   = "10.1.2.1"

  # NOTE: Это опциональный параметр
  # dns_servers =  []

  # NOTE: Это опциональный параметр
  # tags {
    # NOTE: Это опциональный параметр
    # id = "00000000-0000-0000-0000-000000000000"

    # NOTE: Это вычисляемый параметр
    # name = "test_tag"

    # NOTE: Это вычисляемый параметр
    # color = "test_color"
  # }

  # NOTE: Это опциональный параметр
  # default = false

  # NOTE: Это вычисляемый параметр
  # created_time  = "2023-10-26T10:27:04Z"

  # NOTE: Это вычисляемый параметр
  # modified_time = "2023-10-26T10:28:21Z"
}

data "cloudru_evolution_security_group" "security_groups" {
  # NOTE: Это опциональный параметр
  filter {
    # NOTE: это опциональный параметр, по умолчанию используется project_id указанный в секции provider
    # NOTE: это опциональный параметр
    # availability_zone_id = "00000000-0000-0000-0000-000000000000"
    # NOTE: это опциональный параметр
    # tag_ids = ["00000000-0000-0000-0000-000000000000"]
    # NOTE: это опциональный параметр
    # name = "test"
  }
}

locals {
  demo_security_groups = [
    for s in data.cloudru_evolution_security_group.security_groups.resources : s if s.name == "SSH-access"
  ]

  demo_security_group = local.demo_security_groups.0
}
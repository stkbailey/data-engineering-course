terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.13.0"
    }
  }
}

provider "postgresql" {
  host            = var.server
  port            = var.port
  database        = var.database_name
  username        = var.username
  password        = var.password
  sslmode         = "require"
  connect_timeout = 15
}

locals {
  schema_list = [
    "dbt"
  ]
  system_roles = [
    "meltano",
    "dbt",
    "superset"
  ]
}

resource "postgresql_database" "analytics" {
  name = "analytics"
}

resource "postgresql_role" "meltano" {
  name     = "meltano"
  login = true
  password = "foo"
}

resource "postgresql_schema" "my_schema" {
  for_each = toset(local.schema_list)

  name     = each.key
  database = postgresql_database.analytics.name
}
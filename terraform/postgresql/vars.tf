variable "server" {
  description = "The server address for the database."
}

variable "port" {
  description = "Port available for the database connection."
  default     = 5432
}

variable "username" {
  description = "Username for user with admin permissions."
}

variable "password" {
  description = "Password for user."
}

variable "database_name" {
  description = "The database in which new schemas will be created."
  default     = "postgres"
}
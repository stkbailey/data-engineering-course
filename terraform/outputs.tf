output "database" {
  value     = module.aws.rds
  sensitive = true
}

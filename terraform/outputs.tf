output "web_addresses" {
  value = module.web[*].public_ip
}

output "db_addresses" {
  value = module.db[*].public_ip
}

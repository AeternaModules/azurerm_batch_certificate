output "batch_certificates_id" {
  description = "Map of id values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.id }
}
output "batch_certificates_account_name" {
  description = "Map of account_name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.account_name }
}
output "batch_certificates_certificate" {
  description = "Map of certificate values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.certificate }
  sensitive   = true
}
output "batch_certificates_format" {
  description = "Map of format values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.format }
}
output "batch_certificates_name" {
  description = "Map of name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.name }
}
output "batch_certificates_password" {
  description = "Map of password values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.password }
  sensitive   = true
}
output "batch_certificates_public_data" {
  description = "Map of public_data values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.public_data }
}
output "batch_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.resource_group_name }
}
output "batch_certificates_thumbprint" {
  description = "Map of thumbprint values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.thumbprint }
}
output "batch_certificates_thumbprint_algorithm" {
  description = "Map of thumbprint_algorithm values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.thumbprint_algorithm }
}


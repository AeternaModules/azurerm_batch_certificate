output "batch_certificates" {
  description = "All batch_certificate resources"
  value       = azurerm_batch_certificate.batch_certificates
  sensitive   = true
}
output "batch_certificates_account_name" {
  description = "List of account_name values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.account_name]
}
output "batch_certificates_certificate" {
  description = "List of certificate values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.certificate]
  sensitive   = true
}
output "batch_certificates_format" {
  description = "List of format values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.format]
}
output "batch_certificates_name" {
  description = "List of name values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.name]
}
output "batch_certificates_password" {
  description = "List of password values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.password]
  sensitive   = true
}
output "batch_certificates_public_data" {
  description = "List of public_data values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.public_data]
}
output "batch_certificates_resource_group_name" {
  description = "List of resource_group_name values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.resource_group_name]
}
output "batch_certificates_thumbprint" {
  description = "List of thumbprint values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.thumbprint]
}
output "batch_certificates_thumbprint_algorithm" {
  description = "List of thumbprint_algorithm values across all batch_certificates"
  value       = [for k, v in azurerm_batch_certificate.batch_certificates : v.thumbprint_algorithm]
}


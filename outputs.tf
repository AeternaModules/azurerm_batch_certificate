output "batch_certificates_id" {
  description = "Map of id values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "batch_certificates_account_name" {
  description = "Map of account_name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "batch_certificates_certificate" {
  description = "Map of certificate values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
  sensitive   = true
}
output "batch_certificates_format" {
  description = "Map of format values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.format if v.format != null && length(v.format) > 0 }
}
output "batch_certificates_name" {
  description = "Map of name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "batch_certificates_password" {
  description = "Map of password values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "batch_certificates_public_data" {
  description = "Map of public_data values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.public_data if v.public_data != null && length(v.public_data) > 0 }
}
output "batch_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "batch_certificates_thumbprint" {
  description = "Map of thumbprint values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}
output "batch_certificates_thumbprint_algorithm" {
  description = "Map of thumbprint_algorithm values across all batch_certificates, keyed the same as var.batch_certificates"
  value       = { for k, v in azurerm_batch_certificate.batch_certificates : k => v.thumbprint_algorithm if v.thumbprint_algorithm != null && length(v.thumbprint_algorithm) > 0 }
}


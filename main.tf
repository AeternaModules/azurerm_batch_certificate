data "azurerm_key_vault_secret" "certificate" {
  for_each     = { for k, v in var.batch_certificates : k => v if v.certificate_key_vault_id != null && v.certificate_key_vault_secret_name != null }
  name         = each.value.certificate_key_vault_secret_name
  key_vault_id = each.value.certificate_key_vault_id
}
data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.batch_certificates : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_batch_certificate" "batch_certificates" {
  for_each = var.batch_certificates

  account_name         = each.value.account_name
  certificate          = each.value.certificate != null ? each.value.certificate : try(data.azurerm_key_vault_secret.certificate[each.key].value, null)
  format               = each.value.format
  resource_group_name  = each.value.resource_group_name
  thumbprint           = each.value.thumbprint
  thumbprint_algorithm = each.value.thumbprint_algorithm
  password             = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
}


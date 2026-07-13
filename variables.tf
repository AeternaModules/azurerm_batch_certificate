variable "batch_certificates" {
  description = <<EOT
Map of batch_certificates, attributes below
Required:
    - account_name
    - certificate
    - certificate_key_vault_id (optional, alternative to certificate)
    - certificate_key_vault_secret_name (optional, alternative to certificate)
    - format
    - resource_group_name
    - thumbprint
    - thumbprint_algorithm
Optional:
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
EOT

  type = map(object({
    account_name                      = string
    certificate                       = string
    certificate_key_vault_id          = optional(string)
    certificate_key_vault_secret_name = optional(string)
    format                            = string
    resource_group_name               = string
    thumbprint                        = string
    thumbprint_algorithm              = string
    password                          = optional(string)
    password_key_vault_id             = optional(string)
    password_key_vault_secret_name    = optional(string)
  }))
}


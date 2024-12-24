output "key_vault_secret_ids" {
  description = "Key Vault secret IDs"
  value       = [for s in azurerm_key_vault_secret.secrets : s.id]
}

output "key_vault_secret_names" {
  description = "Key Vault secret names"
  value       = [for s in azurerm_key_vault_secret.secrets : s.name]
}
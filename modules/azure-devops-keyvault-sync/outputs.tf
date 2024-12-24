output "key_vault_secret_ids" {
  description = "Key Vault secret IDs"
  value       = [for s in azurerm_key_vault_secret.secrets : s.id]
}
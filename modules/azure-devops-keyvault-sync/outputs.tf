output "key_vault_secret_ids" {
  description = "Key Vault secret IDs"
  value       = azurerm_key_vault_secret.secrets[*].id
}
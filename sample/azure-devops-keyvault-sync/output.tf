output "imported_key_vault_secret_ids" {
  description = "Imported Key Vault secret IDs"
  value       = module.ado_to_akv_sync_vargroupA.key_vault_secret_ids
}

output "imported_key_vault_secret_names" {
  description = "Imported Key Vault secret names"
  value       = module.ado_to_akv_sync_vargroupA.key_vault_secret_names
}

resource "azurerm_key_vault" "kv" {
  	name = var.key_vault_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	tenant_id = data.azurerm_client_config.current.tenant_id
	sku_name = var.key_vault_sku

}

resource "azurerm_key_vault_access_policy" "name" {
	key_vault_id = azurerm_key_vault.kv.id
	tenant_id = data.azurerm_client_config.current.tenant_id
	object_id = data.azurerm_client_config.current.object_id

	certificate_permissions = var.list_certificate_permissions
	secret_permissions = var.list_secret_permissions
}

resource "azurerm_key_vault_certificate" "example" {
  name         = "generated-cert"
  key_vault_id = azurerm_key_vault.kv.id

  certificate_policy {
    issuer_parameters {
      name = "Self"
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = true
    }

    lifetime_action {
      action {
        action_type = "AutoRenew"
      }

      trigger {
        days_before_expiry = 30
      }
    }

    secret_properties {
      content_type = "application/x-pkcs12"
    }

    x509_certificate_properties {
      # Server Authentication = 1.3.6.1.5.5.7.3.1
      # Client Authentication = 1.3.6.1.5.5.7.3.2
      extended_key_usage = ["1.3.6.1.5.5.7.3.1"]

      key_usage = [
        "cRLSign",
        "dataEncipherment",
        "digitalSignature",
        "keyAgreement",
        "keyCertSign",
        "keyEncipherment",
      ]

      subject            = "CN=hello-world"
      validity_in_months = 12
    }
  }
}
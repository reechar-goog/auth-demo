resource "google_service_account" "k8s_secret" {
  account_id   = "long-lived-creds-k8s"
  display_name = "Key in k8s secret"
}

resource "google_service_account" "vault_static" {
  account_id   = "long-lived-creds-vault"
  display_name = "Key in Vault"
}

resource "google_service_account" "workload_identity" {
  account_id   = "workload-identity-gsa"
  display_name = "workload identiy - No Key"
}

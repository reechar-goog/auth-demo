
resource "google_storage_bucket" "k8s" {
  name     = "reechar-auth-demo-k8s"
}

resource "google_storage_bucket" "vault_static" {
  name     = "reechar-auth-demo-vault-static"
}

resource "google_storage_bucket" "vault_dynamic" {
  name     = "reechar-auth-demo-vault-dynamic"
}

resource "google_storage_bucket" "workload" {
  name     = "reechar-auth-demo-workload-identity"
}

resource "google_storage_bucket_iam_member" "k8s" {
  bucket = "${google_storage_bucket.k8s.name}"
  role = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.k8s_secret.email}"
}

resource "google_storage_bucket_iam_member" "vstatic" {
  bucket = "${google_storage_bucket.vault_static.name}"
  role = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.vault_static.email}"
}

resource "google_storage_bucket_iam_member" "wl" {
  bucket = "${google_storage_bucket.workload.name}"
  role = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.workload_identity.email}"
}

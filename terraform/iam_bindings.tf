/*
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
resource "google_storage_bucket_iam_member" "k8s" {
  bucket = "${google_storage_bucket.k8s.name}"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.k8s_secret.email}"
}

resource "google_storage_bucket_iam_member" "vstatic" {
  bucket = "${google_storage_bucket.vault_static.name}"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.vault_static.email}"
}

resource "google_storage_bucket_iam_member" "wl" {
  bucket = "${google_storage_bucket.workload.name}"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.workload_identity.email}"
}

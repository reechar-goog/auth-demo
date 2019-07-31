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

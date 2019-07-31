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

resource "google_storage_bucket" "k8s" {
  name = "reechar-auth-demo-k8s"
}

resource "google_storage_bucket" "vault_static" {
  name = "reechar-auth-demo-vault-static"
}

resource "google_storage_bucket" "vault_dynamic" {
  name = "reechar-auth-demo-vault-dynamic"
}

resource "google_storage_bucket" "workload" {
  name = "reechar-auth-demo-workload-identity"
}

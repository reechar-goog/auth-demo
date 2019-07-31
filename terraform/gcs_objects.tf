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
data "template_file" "test_meta" {
  template = "${file("test.tpl")}"

  vars = {
    text = "works for metadata"
  }
}

data "template_file" "test_k8s" {
  template = "${file("test.tpl")}"

  vars = {
    text = "works for k8s secret"
  }
}

data "template_file" "vault_static" {
  template = "${file("test.tpl")}"

  vars = {
    text = "works for vault static"
  }
}

data "template_file" "vault_dynamic" {
  template = "${file("test.tpl")}"

  vars = {
    text = "works for vault dynamic"
  }
}

data "template_file" "workload" {
  template = "${file("test.tpl")}"

  vars = {
    text = "works for workload identity"
  }
}

resource "google_storage_bucket_object" "k8s" {
  name    = "test.txt"
  content = "${data.template_file.test_k8s.rendered}"
  bucket  = "reechar-auth-demo-k8s"
}

resource "google_storage_bucket_object" "vault_static" {
  name    = "test.txt"
  content = "${data.template_file.vault_static.rendered}"
  bucket  = "reechar-auth-demo-vault-static"
}

resource "google_storage_bucket_object" "vault_dynamic" {
  name    = "test.txt"
  content = "${data.template_file.vault_dynamic.rendered}"
  bucket  = "reechar-auth-demo-vault-dynamic"
}

resource "google_storage_bucket_object" "workload" {
  name    = "test.txt"
  content = "${data.template_file.workload.rendered}"
  bucket  = "reechar-auth-demo-workload-identity"
}

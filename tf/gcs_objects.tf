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
  name   = "test.txt"
  content = "${data.template_file.test_k8s.rendered}"
  bucket = "reechar-auth-demo-k8s"
}

resource "google_storage_bucket_object" "vault_static" {
  name   = "test.txt"
  content = "${data.template_file.vault_static.rendered}"
  bucket = "reechar-auth-demo-vault-static"
}

resource "google_storage_bucket_object" "vault_dynamic" {
  name   = "test.txt"
  content = "${data.template_file.vault_dynamic.rendered}"
  bucket = "reechar-auth-demo-vault-dynamic"
}

resource "google_storage_bucket_object" "workload" {
  name   = "test.txt"
  content = "${data.template_file.workload.rendered}"
  bucket = "reechar-auth-demo-workload-identity"
}

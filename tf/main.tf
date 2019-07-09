resource "google_project" "demo_project"{
  name = "Auth on GKE Demo"
  project_id = "reechar-hedge-gke-auth"
  org_id     = "306799121337"
  billing_account = "0030A3-D6BEAE-9C7088"
}

provider "google" {
  project     = "reechar-hedge-gke-auth"
}

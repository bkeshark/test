provider "google" {
    credentials = file("~Download/account.json")
    project     = "single-portal-261402"
    region      = "us-central1"
}
resource "google_compute_instance" "appserver" {
  name = "primary-appserver"
}

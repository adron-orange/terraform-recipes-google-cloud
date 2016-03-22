provider "google" {
  credentials = "${file("account.json")}"
  project     = "thrashingcode-1258"
  region      = "us-central1"
}
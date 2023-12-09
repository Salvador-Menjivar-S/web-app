terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.52.0"
    }
  }
}

provider "google" {
  project = "tf-gcp-demo-37721"
  region  = "us-central1"
  zone    = "us-central1-c"
}

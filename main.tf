terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.22.0"
    }
  }
}

provider "google" {
  credentials = file("gcp-credentials.json")

  project = "javadocky"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

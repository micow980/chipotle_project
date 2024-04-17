terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = file(var.keys)
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "default-bucket" {
  name          = "teak-truck-412721-terra-bucket"
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}

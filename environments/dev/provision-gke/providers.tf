terraform {
  required_providers {
    google = {
      version = "~> 4.47.0"
    }
    google-beta = {
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  # credentials = file("~/.config/gcloud/application_default_credentials.json")
  project     = var.project_id
  region      = var.region
  zone        = "europe-west1-a"
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = "europe-west1-a"
}


provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}
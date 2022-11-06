


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "> 3.45.0, !=3.46.0, < 3.48.0"
    }

    k8s = {
      source  = "hashicorp/kubernetes"
      version = "> 1.12.0, != 1.13.1, < 1.13.3 "
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 1.2.0"
    }

  }
}

resource "google_compute_instance" "special" {
  name         = "aone"
  machine_type = "e2-micro"
  zone         = "us-west1-c"

}

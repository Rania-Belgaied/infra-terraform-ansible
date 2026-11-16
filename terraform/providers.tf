terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.4"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.30.0"
}

provider "kubernetes" {
  host                   = minikube_cluster.main.host
  client_certificate     = minikube_cluster.main.client_certificate
  client_key             = minikube_cluster.main.client_key
  cluster_ca_certificate = minikube_cluster.main.cluster_ca_certificate
}
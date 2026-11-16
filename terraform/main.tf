resource "minikube_cluster" "main" {
  driver       = "docker"
  cluster_name = var.cluster_name
  nodes        = var.nodes
  cpus         = var.cpus
  memory       = var.memory

  addons = [
    "default-storageclass",
    "storage-provisioner",
    "ingress",
    "metrics-server",
  ]
}

resource "kubernetes_namespace" "ns" {
  for_each = toset(var.namespaces)

  metadata {
    name = each.key
  }

  depends_on = [minikube_cluster.main]
}
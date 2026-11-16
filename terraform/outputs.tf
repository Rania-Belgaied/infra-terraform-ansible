output "cluster_name" {
  value = minikube_cluster.main.cluster_name
}

output "namespaces" {
  value = [for ns in kubernetes_namespace.ns : ns.metadata[0].name]
}
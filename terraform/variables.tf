variable "cluster_name" {
  type    = string
  default = "gitops-cluster"
}

variable "nodes" {
  type    = number
  default = 1 # 1 nœud suffit sur une VM de 8 Go
}

variable "cpus" {
  type    = number
  default = 3
}

variable "memory" {
  type    = string
  default = "5g" # descends à 4g si la VM a 6 Go
}

variable "namespaces" {
  type    = list(string)
  default = ["production", "staging", "argocd", "monitoring"]
}
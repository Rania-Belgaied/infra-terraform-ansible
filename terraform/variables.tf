variable "cluster_name" {
  type    = string
  default = "gitops-cluster"
}

variable "nodes" {
  type    = number
  default = 1
}

variable "cpus" {
  type    = number
  default = 3
}

variable "memory" {
  type    = string
  default = "5g"
}

variable "namespaces" {
  type    = list(string)
  default = ["production", "staging", "argocd", "monitoring"]
}
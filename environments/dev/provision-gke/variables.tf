variable "project_id" {
  default = "dm-poc-development"
}

variable "region" {
  default = "europe-west1"
}

variable "env_name" {
  default = "dev"
}

variable "network" {
  default = "dm-poc-dev-netw"
}

variable "subnetwork" {
  default = "dm-poc-dev-subntw"
}

variable "ip_range_pods_name" {
  default = "dm-poc-dev-pods-range"
}

variable "ip_range_services_name" {
  default = "dm-poc-cluster-svc-range"
}

variable "cluster_name" {
  default = "dm-poc-dev"
}
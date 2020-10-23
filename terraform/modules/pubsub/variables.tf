variable "project" {
  description = "GCP project, set using TF_VAR_project env var"
}

variable "env" {
  description = "Envionment to deploy resources in, set in calling module"
}

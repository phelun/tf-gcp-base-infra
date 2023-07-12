# Using backend config in CLI will override this block
terraform {
  backend "gcs" {
    bucket = "dm-poc-development"
    prefix = "environments/dev/gcs_state.tfstate"
  }
}
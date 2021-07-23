terraform {
  required_version = ">= 0.13.5"
}
provider "oci" {
  region       = var.region
  tenancy_ocid = var.tenancy_ocid

  #### BEGIN COMMENT OUT FOR USAGE ON ORM AND/OR CLOUD SHELL
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  #### END COMMENT OUT FOR USAGE ON ORM AND/OR CLOUD SHELL

  disable_auto_retries = "true"
}

provider "oci" {
  alias        = "home"
  region       = data.oci_identity_region_subscriptions.home_region_subscriptions.region_subscriptions[0].region_name
  tenancy_ocid = var.tenancy_ocid

  #### BEGIN COMMENT OUT FOR USAGE ON ORM AND/OR CLOUD SHELL
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  #### END COMMENT OUT FOR USAGE ON ORM AND/OR CLOUD SHELL

  disable_auto_retries = "true"
}
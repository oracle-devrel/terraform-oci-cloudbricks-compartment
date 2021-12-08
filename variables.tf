# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf
#
# Purpose:  The following script declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/
variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy."
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"

}
/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

/********** Compartment Variables **********/
variable "parent_compartment_name" {
  description = "Display name of Parent Compartment"
  default     = ""
}

variable "root_compartment_ocid" {
  description = "Root Compartment OCID Descriptor"
  default     = null
}

variable "compartment_name" {
  description = "Compartment Display Name"
}

variable "compartment_description" {
  description = "Compartment Description"
}

variable "is_root_parent" {
  description = "Boolean that describes if either the root compartment is the parent of this compartment or not"
  default     = false

}

variable "enable_delete" {
  description = "Enables if Terraform is allowed to programatically delete this compartment upon invoking destroy command"
  default     = false

}

variable "sleep_timer" {
  description = "Sleep timer in seconds to wait for compartment to be created"
  default     = 60
}

/********** Compartment Variables **********/

/********** Brick Variables **********/
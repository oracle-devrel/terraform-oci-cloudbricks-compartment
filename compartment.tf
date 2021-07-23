# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# compartment.tf 
#
# Purpose: The following script creates the compartment resource
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment


resource "oci_identity_compartment" "Compartment" {
  provider       = oci.home
  description    = var.compartment_description
  name           = var.compartment_name
  compartment_id = var.is_root_parent == true ? var.root_compartment_ocid : local.parent_compartment_id
  enable_delete  = var.enable_delete

  lifecycle {
    ignore_changes = [defined_tags["Oracle-Tags.CreatedBy"], defined_tags["Oracle-Tags.CreatedOn"]]
  }
  defined_tags = {
    "${oci_identity_tag_namespace.devrel.name}.${oci_identity_tag.release.name}" = local.release
  }
}
terraform {
required_providers {
oci = {
  source = "oci"
  version = "6.22"
        }
    }
} 

locals {
    regions = ["uk-london-1","eu-paris-1","eu-eumarseille-1"]
}


module "vcn" {
  for_each = toset(local.regions)
  region = each.value
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  compartment_id = var.compartment_ocid
}

# module "vcn_eumarseille1" {
#   region = oci.eumarseille1
#   source  = "oracle-terraform-modules/vcn/oci"
#   version = "3.6.0"
#   compartment_id = var.compartment_ocid

# }

# module "vcn_euparis1" {
#   source  = "oracle-terraform-modules/vcn/oci"
#   version = "3.6.0"
#   compartment_id = var.compartment_ocid
# }


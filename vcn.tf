terraform {
required_providers {
oci = {
  source = "oci"
  version = "6.22"
        }
    }
} 

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
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


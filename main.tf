terraform {
required_providers {
oci = {
  source = "hashicorp/oci"
  version = "6.22"
  configuration_aliases = [ "oci.eumarseille1", "euparis1" ]

        }
    }
} 

module "vcn" {
  # to use the terraform registry version comment the previous line and uncomment the 2 lines below
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  # general oci parameters
  compartment_id = var.compartment_id
}


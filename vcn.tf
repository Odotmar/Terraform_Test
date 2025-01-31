terraform {
required_providers {
oci = {
  source = "hashicorp/oci"
  version = "6.22"
        }
    }
} 

module "vcn" {
  providers = {
    oci =  uk-london-1
    }
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  compartment_id = var.compartment_ocid
}

module "vcn_eumarseille1" {
  providers = {
    oci =  oci.eumarseille1
    }
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  compartment_id = var.compartment_ocid

}

module "vcn_euparis1" {
  providers = {oci =  oci.euparis1}
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  compartment_id = var.compartment_ocid
}


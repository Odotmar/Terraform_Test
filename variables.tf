# Copyright (c) 2019, 2021, Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# provider identity parameters
variable "region" {
  description = "the oci region where resources will be created"
  type        = string
  default = "uk-london-1"
  # no default value, asking user to explicitly set this variable's value. see codingconventions.adoc
  # List of regions: https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#ServiceAvailabilityAcrossRegions
}

variable "tenancy_ocid" {
}

variable "compartment_ocid" {
}



# general oci parameters

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "terraform-oci"
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default = {
    terraformed = "please do not edit manually"
    module      = "oracle-terraform-modules/vcn/oci"
  }
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the resources created using defined tags."
  type        = map(string)
  default     = null
}

# vcn parameters

variable "create_internet_gateway" {
  description = "whether to create the internet gateway"
  type        = bool
  default     = true
}

variable "lockdown_default_seclist" {
  description = "whether to remove all default security rules from the VCN Default Security List"
  type        = bool
  default     = false
}

variable "vcn_cidrs" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  type        = list(string)
  default     = [ "10.10.10.0/24" ]
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string
  default     = "vcnmodule"
}

variable "vcn_name" {
  description = "user-friendly name of to use for the vcn to be appended to the label_prefix"
  type        = string
}

variable "internet_gateway_display_name" {
  description = "(Updatable) Name of Internet Gateway. Does not have to be unique."
  type        = string
}
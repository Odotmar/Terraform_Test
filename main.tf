terraform {
required_providers {
oci = {
source = "hashicorp/oci"
version = "6.22"
}
}
}

locals {
regions = [ "oci.euparis1", "oci.eumarseille"]
}



data "oci_identity_availability_domains" "ads" {
compartment_id = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
}

data "oci_identity_availability_domains" "ads2" {
for_each = toset(locals.regions)
provider = each.value
compartment_id = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
}

output "reg1" {
value = data.oci_identity_availability_domains.ads
}

output "reg2" {
value = data.oci_identity_availability_domains.ads2
}
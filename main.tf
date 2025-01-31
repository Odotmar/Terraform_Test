terraform {
required_providers {
oci = {
source = "hashicorp/oci"
version = "6.22"
}
}
}



module "vcn"  {
     source = "./modules/vcn"
     version = "3.6.0"
     create_internet_gateway = true
     vcn_namw = "My Test VCN 01"
     vcn_cidrs = "10.10.100.0/24"
}
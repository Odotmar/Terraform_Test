provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

provider "oci" {
  alias = "euparis1"
  region = "eu-paris-1"
}

provider "oci" {
  alias = "eumarseille1"
  region = "eu-eumarseille-1"
}
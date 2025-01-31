# provider "oci" {
#       tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
#       user_ocid = "ocid1.user.oc1..aaaaaaaazhctzybufrkzbg4kok2i2lykp4wwew2qmw23vi3vhla2morrysgq"
#       fingerprint = "62:95:6f:3b:ee:af:52:52:9a:18:1a:7c:77:14:3d:7f"
#       private_key_path = "~/opc/.oci/personal/omardal.pem"
#       region = var.region
# }

provider "oci" {
  region = "uk-london-1"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
  user_ocid = "ocid1.user.oc1..aaaaaaaazhctzybufrkzbg4kok2i2lykp4wwew2qmw23vi3vhla2morrysgq"
  fingerprint = "62:95:6f:3b:ee:af:52:52:9a:18:1a:7c:77:14:3d:7f"
  private_key_path = "~/opc/.oci/personal/omardal.pem"
}

provider "oci" {
  alias = "euparis1"
  region = "eu-paris-1"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
  user_ocid = "ocid1.user.oc1..aaaaaaaazhctzybufrkzbg4kok2i2lykp4wwew2qmw23vi3vhla2morrysgq"
  fingerprint = "62:95:6f:3b:ee:af:52:52:9a:18:1a:7c:77:14:3d:7f"
  private_key_path = "~/opc/.oci/personal/omardal.pem"
}




provider "oci" {
  alias = "eumarseille1"
  region = "eu-eumarseille-1"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3lhpg53wi3xvu6thbvksfwl2bwn5nxkbtorbati76ccfgxwf4s2a"
  user_ocid = "ocid1.user.oc1..aaaaaaaazhctzybufrkzbg4kok2i2lykp4wwew2qmw23vi3vhla2morrysgq"
  fingerprint = "62:95:6f:3b:ee:af:52:52:9a:18:1a:7c:77:14:3d:7f"
  private_key_path = "~/opc/.oci/personal/omardal.pem"
}
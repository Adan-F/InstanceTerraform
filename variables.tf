
variable "user_ocid" {
  type      = string
  default   = ""
  sensitive = true
}
variable "tenancy_ocid" {
  type      = string
  default   = ""
  sensitive = true
}
variable "private_key_path" {
  type      = string
  default   = ""
  sensitive = true
}
variable "fingerprint" {
  type      = string
  default   = ""
  sensitive = true
}
variable "region" {
  type    = string
  default = "us-phoenix-1"
}
variable "compartment_ocid" {
  type      = string
  default   = ""
  sensitive = true
}
variable "instance_display_name" {
  type    = string
  default = "init"
}
variable "source_ocid" {
  description = "Canonical Linux image in region us--phoenix-1"
  type      = string
  default   = "ocid1.image.oc1.phx.aaaaaaaa56mk4xc7nvcvhhtfpafrpeoqijhe33glsx6nmmrdph5yhudisata"
}
variable "subnet_ocids" {
  description = "Default subnet ocid"
  type    = list(string)
  default = ["ocid1.vcn.oc1.phx.amaaaaaau3sk3cqayubnfy3j7dmwvkxlem2zbypmzxaizvdmyzvsncyr6yhq"]
}
variable "public_ip" {
  type    = string
  default = "EPHEMERAL"
}
variable "ssh_public_key" {
  type    = string
  default = ""
  sensitive = true
}

variable "shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}
variable "instance_flex_memory_in_gbs" {
  type    = number
  default = 12
}
variable "instance_flex_ocpus" {
  type    = number
  default = 1
}
variable "instance_state" {
  type    = string
  default = "RUNNING"
}

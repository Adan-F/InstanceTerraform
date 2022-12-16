
terraform {
  required_version = ">= 0.13"
  required_providers {
    oci = {
      version = ">= 4.0.0 "
      source = "oracle/oci"
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

module "instance_flex" {
  source = "oracle-terraform-modules/compute-instance/oci"
  instance_count              = 1 # how many instances do you want?
  ad_number                   = 1 # AD number to provision instances. If null, instances are provisionned in a rolling manner starting with AD1
  compartment_ocid            = var.compartment_ocid
  instance_display_name       = var.instance_display_name
  source_ocid                 = var.source_ocid
  subnet_ocids                = var.subnet_ocids
  public_ip                   = var.public_ip # NONE, RESERVED or EPHEMERAL
  ssh_public_keys             = var.ssh_public_key
  block_storage_sizes_in_gbs  = [200]
  shape                       = var.shape
  instance_flex_memory_in_gbs = var.instance_flex_memory_in_gbs
  instance_flex_ocpus         = var.instance_flex_ocpus
  instance_state              = var.instance_state # RUNNING or STOPPED
}


output "instance_flex" {
  description = "ocid of created instances."
  value       = module.instance_flex.instances_summary
}

provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = "ust-vc-core.corp.sw-tech.by"
  allow_unverified_ssl = true
}
data "vsphere_datacenter" "datacenter" {
  name = "Datacenter_CORE"
}
data "vsphere_datastore" "datastore" {
  name          = "CORE-FC-HDD-NT-08-1"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_compute_cluster" "cluster" {
  name          = "Cluster-Main_CORE"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_virtual_machine" "template" {
  name          = "ubuntu24-template"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_network" "network" {
  name          = var.vm_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

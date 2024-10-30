variable "vsphere_user" {}
variable "vsphere_password" {}
variable "ssh_user" {}
variable "ssh_password" {}
variable "ssh_port" {}

# NAME
variable "vm_names" {
  description = "Список имен виртуальных машин для создания (любое количество в двойных кавычках через запятую)."
  type        = list(string)
  default     = ["UBUNTU-1","UBUNTU-2"]
}
# CPU
variable "num_cpus" {
  type    = number
  default = 2
}
# RAM
variable "memory" {
  type    = number
  default = "2048"
}
# DISK
variable "disk_size" {
  type    = number
  default = "20"
}
# NETWORK
variable "vm_network" {
  type    = string
  default = "INET_CORE_290"
}

# 
# rm -r .terraform* && # rm -r terraform.tfstate*
# terraform init
# terraform apply --auto-approve
# terraform destroy --auto-approve
# 

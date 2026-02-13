variable "location" {
  type        = string
  description = "Azure region"
  default     = "westeurope"
}

variable "vm_admin_username" {
  type        = string
  description = "Admin username for the VM"
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key"
}


variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_B1s"
}

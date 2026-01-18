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

variable "ssh_public_key" {
  type        = string
  description = "SSH public key content (ssh-ed25519 ...)"
}

variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_B1s"
}

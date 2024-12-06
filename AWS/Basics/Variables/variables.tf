variable "ACCESS_KEY" {
  type        = string
  default     = "my-access-key"
  description = "AWS Access Key."
}

variable "ACCESS_KEY_SECRET" {
  type        = string
  default     = "my-access-key-secret"
  description = "AWS Access Key Secret."
}

/* ------------------------------------------- */

variable "vpn_ip" {
    default = "200.20.30.50/32"
    description = "This is a VPN Server Created in AWS"
}

variable "app_port" {
    default = "8080"
}

variable "ssh_port" {
    default = "22"
}

variable "ftp_port" {
    default = "21"
}
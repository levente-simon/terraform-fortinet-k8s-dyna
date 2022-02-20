variable "forti_hostname" { type = string }
variable "cluster_name"   { type = string }
variable "insecure"       { type = bool   }

variable "address_name"   { type = string }
variable "sdn"            { type = string }
variable "dstintf"        { type = string }
variable "k8s_label"      { type = string }

variable "forti_token" {
  type      = string
  sensitive = true
}

variable "srcintf" {
  type    = list(string)
  default = [ "any" ]
}

variable "srcaddr" {
  type    = list(string)
  default = [ "all" ]
}

variable "service" {
  type    = list(string)
  default = [ "HTTPS", "HTTP" ]
}

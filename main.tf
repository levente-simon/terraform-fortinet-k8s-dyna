terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = ">= 1.14.0"
    }
  }
}

provider "fortios" {
  hostname     = var.forti_hostname
  token        = var.forti_token
  insecure     = var.insecure
}

variable "module_depends_on" {
  type    = any
  default = []
}

resource "fortios_firewall_address" "dyna_address" {
  depends_on    = [ var.module_depends_on ]
  
  name          = var.address_name
  sdn           = var.sdn
  interface     = var.dstintf
  filter        = "K8S_Label.${var.k8s_label}"
  type          = "dynamic"
  sdn_addr_type = "public"
}

resource "fortios_firewall_policy" "kube_cluster" {
  depends_on = [ fortios_firewall_address.dyna_address ]

  action     = "accept"
  name       = var.address_name
  schedule   = "always"
  nat        = "disable"

  dynamic "srcintf" {
    for_each = { for i in var.srcintf: i => i }
    content {
      name = srcintf.value
    }
  }
  dynamic "srcaddr" {
    for_each = { for i in var.srcaddr: i => i }
    content {
      name = srcaddr.value
    }
  }

  dstintf { name = var.dstintf      }
  dstaddr { name = var.address_name }

  dynamic "service" {
    for_each = { for i in var.service: i => i }
    content {
      name = service.value
    }
  }
}


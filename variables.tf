# ----------> Compartment <----------

variable "compartment_name" {
  type    = string
  default = "k8s"
}

variable "region" {
  type    = string
  default = "us-ashburn-1"  
}

# ---------->VM's----------

variable "shape" {
  type    = string
  default = "VM.Standard.E3.Flex"
}

variable "ocpus_per_node" {
  type    = number
  default = 1
}

variable "memory_in_gbs_per_node" {
  type    = number
  default = 1
}

variable "image_id" {
  type    = string
  default = "ocid1.image.oc1.iad.aaaaaaaab2z4tdx4ozceelvzjzvvugwyavhco7mjuq44ejszrvw4yhz4za5a"
}
# Link to a list of available images (Be sure to select the correct region and CPU architecture. We are using Oracle-Linux-8.8-2023.09.26-0-OKE-1.26.7-653)
# https://docs.cloud.oracle.com/iaas/images/

# ----------> Cluster <----------
variable "k8s_version" {
  type    = string
  default = "v1.26.7" #"v1.28.2"
}

variable "node_size" {
  type    = string
  default = "3"
}

variable "cluster_name" {
  type    = string
  default = "k8s-cluster"
}

# ----------> Network <----------

variable "vcn_name" {
  type    = string
  default = "k8s-vcn"  
}

variable "vcn_dns_label" {
  type    = string
  default = "k8svcn"  
}

# ----------> Load Balancer <----------

variable "load_balancer_name_space" {
  type    = string
  default = "loadbalancer"
}

variable "node_port" {
  type    = number
  default = 30080
}

variable "listerner_port" {
  type    = number
  default = 80
}

# ----------> SSH <----------

variable "ssh_public_key" {
  type    = string
  # default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCzvqa8jPn35Z8I6vcgRlvmyucjiVsTO6+lHR0T751RtS6RCixLGmdo9tVissiXJy78LKszrP2vpOaefCgeTMH2bmRYLOmsWBUYTDHgda0TqKIAwN+ajcxlKPHkJhX0/WBbUWfA18gXRmXknTeJHTiaBYx94qDmyxjsOaN/r0K/yqLm4NE0OPqvNTIUsJb6SItxs9oiyvjTqqqLoizAt+nXRiKRZce7GX6PhWVrHfiUVtEvRUzKxZZinm+bxtAAo1O5zRXjQlGPlx8eet8jdSWOtWX9fpBxKccrB49w45hpNAqmcikAOVsViDmQf/NZBWMgQnDSkpFMDBwwiCS1cmyiT7utr+b8fGuZATx8PDnsqzu7t9JsjhJcT3uZrmClOa6YJyCnMX02EYmhdtd7WEYmxRduz52z8tV21z7OcPiGRKi8a3HXlBJ11OMGvXC+B+K3COOYfM/snmtBHltRvHARilFOGslreeArd154bpLNYWFdkc0eGUH7/8Wpsu2dpw2XTeiB5pTW64OA5y1V3IsfT8Xr2h9trrq/RLA96K9/be3/HKe7ZRDlxpILnm7BDPv16DXOjrByZWoVXZGb3/W2zNAzkhk8V2dsi8BIQINQNXZ4t1m9wwSfW9Bzt3LDpT6uAaGJtAle6ow9LmDXNcT9a+OVukbF3kgUgxOTwokcpw== lohan@vostro"
}

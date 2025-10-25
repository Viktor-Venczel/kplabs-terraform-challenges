variable "ingress_rules_input" {
  type = list(any)
  default = [
    {
      port     = 443
      protocol = "tcp"
      cidr     = ["172.31.0.0/16"]
    },
    {
      port     = 8080
      protocol = "tcp"
      cidr     = ["172.31.0.0/16"]
    }
  ]
}

locals {
  ingress_rules = concat(
    [
      {
        port     = 8443
        protocol = "tcp"
        cidr     = ["${aws_eip.example.public_ip}/32"]
      }
    ],
    var.ingress_rules_input
  )
}

variable "splunk" {
  default = "8088"
}
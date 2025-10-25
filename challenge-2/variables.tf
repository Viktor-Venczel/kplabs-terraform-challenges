variable "ingress_rules_input" {
  type = list(any)
}

locals {
  ingress_rules = concat(
    [
      {
        desc     = "PROD or something"
        port     = 8443
        protocol = "tcp"
        cidr     = ["${aws_eip.myeip.public_ip}/32"]
      }
    ],
    var.ingress_rules_input
  )
}

variable "splunk" {}

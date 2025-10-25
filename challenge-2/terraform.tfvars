ingress_rules_input = [
  {
    desc     = "Dev VPC whatevs"
    port     = 443
    protocol = "tcp"
    cidr     = ["172.31.0.0/16"]
  },
  {
    desc     = "Dev VPC whatevs for 8080"
    port     = 8080
    protocol = "tcp"
    cidr     = ["172.31.0.0/16"]
  }
]

splunk = 8088
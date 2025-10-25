variable "instance_config" {
  type = map
  default = {
    instance1 = { instance_type = "t4g.micro", ami = "ami-04d0d004d645f2fc7" }
    instance2 = { instance_type = "t4g.small", ami = "ami-0cab1941a8a08b817" }
    instance3 = { instance_type = "t3.micro", ami = "ami-07e075f00c26b085a" }
  }
}

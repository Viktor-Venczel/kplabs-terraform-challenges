resource "aws_eip" "example" {
  vpc = true
  tags = {
    Name = "myeip"
  }
}
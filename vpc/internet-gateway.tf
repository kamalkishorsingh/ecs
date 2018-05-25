resource "aws_internet_gateway" "qa-vpc-internet-gateway" {
  vpc_id = "${aws_vpc.qa-vpc.id}"

  tags {
    Name = "qa-vpc-internet-gateway"
  }
}

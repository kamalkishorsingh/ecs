resource "aws_route_table" "qa-vpc-route-table" {
  vpc_id = "${aws_vpc.qa-vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.qa-vpc-internet-gateway.id}"
  }

  tags {
    Name = "qa-vpc-route-table"
  }
}

resource "aws_route_table_association" "qa-vpc-route-table-association1" {
  subnet_id      = "${aws_subnet.qa-vpc-subnet1.id}"
  route_table_id = "${aws_route_table.qa-vpc-route-table.id}"
}

resource "aws_route_table_association" "qa-vpc-route-table-association2" {
  subnet_id      = "${aws_subnet.qa-vpc-subnet2.id}"
  route_table_id = "${aws_route_table.qa-vpc-route-table.id}"
}

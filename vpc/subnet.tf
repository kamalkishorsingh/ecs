resource "aws_subnet" "qa-vpc-subnet1" {
    vpc_id     = "${aws_vpc.qa-vpc.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-west-2a"

    tags {
        Name = "qa-vpc-subnet"
    }
}

resource "aws_subnet" "qa-vpc-subnet2" {
    vpc_id     = "${aws_vpc.qa-vpc.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-west-2b"

    tags {
        Name = "qa-vpc-subnet"
    }
}

output "subnet1-id" {
  value = "${aws_subnet.qa-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.qa-vpc-subnet2.id}"
}

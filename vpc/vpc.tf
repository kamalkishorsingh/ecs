resource "aws_vpc" "qa-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  
  tags {
    Name = "qa-vpc"
  }
}

output "id" {
  value = "${aws_vpc.qa-vpc.id}"
}

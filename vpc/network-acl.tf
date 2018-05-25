resource "aws_network_acl" "qa-vpc-network-acl" {
    vpc_id = "${aws_vpc.qa-vpc.id}"
    subnet_ids = ["${aws_subnet.qa-vpc-subnet1.id}", "${aws_subnet.qa-vpc-subnet2.id}"]
    
    egress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    ingress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    tags {
        Name = "qa-vpc-network-acl"
    }
}


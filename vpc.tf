resource "aws_vpc" "ardnik_vpc" {
    cidr_block = "10.0.0.0/24" 
    enable_dns_hostnames=true
    enable_dns_support=true
    tags = {
        Name = "ardnik-vpc"
    }
}

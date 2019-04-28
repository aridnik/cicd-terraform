resource "aws_internet_gateway" "ardnik_igw" {
    vpc_id = "${aws_vpc.ardnik_vpc.id}"

    tags = {
        Name = "ardnik-igw"
    }
}
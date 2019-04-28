resource "aws_route_table" "ardnik_rt_public" {
    vpc_id = "${aws_vpc.ardnik_vpc.id}"
    tags = {
        Name = "ardnik-rt-public"

    }
        
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.ardnik_igw.id}"
    }  



}

resource "aws_route_table_association" "ardnik_subnet_route_association" {
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    route_table_id = "${aws_route_table.ardnik_rt_public.id}" 
}




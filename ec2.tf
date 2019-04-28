resource "aws_instance" "infra_nexus" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.large"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    root_block_device{
        volume_size=30
    }
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]

    tags = {
        Name = "infra-nexus"
        
    }
  
}


resource "aws_instance" "infra_jenkins" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.medium"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]


    tags = {
        Name = "infra-jenkins"
        
    }
  
}


resource "aws_instance" "dev_tomcat" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]

    tags = {
        Name = "dev-tomcat"
        
    }
  
}

resource "aws_instance" "qa_tomcat" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]


    tags = {
        Name = "qa-tomcat"
        
    }
  
}

resource "aws_instance" "stage_tomcat" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]


    tags = {
        Name = "stage-tomcat"
        
    }
  
}


resource "aws_instance" "prod_tomcat" {
    ami = "ami-0080e4c5bc078760e"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.ardnik_subnet_public.id}"
    vpc_security_group_ids = ["${aws_security_group.ardnik_sg.id}"]

    tags = {
        Name = "prod-tomcat"
        
    }
  
}


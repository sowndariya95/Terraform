resource "aws_security_group" "terraform"{
    name = var.sg_name
    description = "SG for terraform practice"

    ingress {
        description = "allow all ports"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_CIDR
    }

     egress {
        description = "allow all ports"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.sg_CIDR
    }
}
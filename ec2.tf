# resource "aws_instance" "terraform-practice"{
#     ami = "ami-03265a0778a880afb"
#     instance_type = "t2.micro"
# }

resource "aws_instance" "terraform-practice"{
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.terraform.name]
}
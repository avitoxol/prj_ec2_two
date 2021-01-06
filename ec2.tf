resource "aws_instance" "test_inst" {
    ami = data.aws_ami.my_image.id
    count = var.counter
    instance_type = var.inst_type[0]
    vpc_security_group_ids = [aws_security_group.web_sg.id]

    tags = {
      Name = "test_inst_${count.index}"
    }
}







resource "aws_instance" "ec2_instance" {
	  ami       =  "ami-0eda277a0b884c5ab" 
	  instance_type = "t2.large"
}


resource "aws_ebs_volume" "ec2_volume" {
	  availability_zone = "eu-west-1"
	  size  =    10
}





resource "aws_instance" "dev-server" {
    instance_type = "t2.micro"
    ami         = "ami-02cff456777cd"
}
resource "aws_s3_bucket" "flashpoint"  {
    bucket = "project-flashpoint-paradox"
}

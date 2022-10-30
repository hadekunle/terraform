



resource "aws_instance" "dev-server" {
    instance_type = "t2.micro"
    ami         = "ami-02cff456777cd"
}
resource "aws_s3_bucket" "falshpoint"  {
    bucket = "project-flashpoint-paradox"
}




## Using terraform show to find out the Private IP Address
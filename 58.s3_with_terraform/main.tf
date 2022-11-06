



resource "aws_s3_bucket" "marvel-cinematic-universe" {
  bucket = "mcu-202011121359"

}


# what's the difference between terraform.tfvars and variables.tf


# resource "aws_s3_bucket" "pixar-studios-2020" {
#   bucket = "pixar-studios-2020"
# }
resource "aws_s3_bucket_object" "pixar-studios-20200" {
  bucket = "pixar-studios-2020"
  key = "woody.jpg"
  content = "/root/woody.jpg"
}

resource "aws_s3_bucket_object" "upload" {
  bucket = "pixar-studios-2020"
  key = "woody.jpg"
  content = "/root/woody.jpg"
}

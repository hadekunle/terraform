





resource "aws_iam_user" "users" {
  name = split(":",var.cloud_users)[count.index]
  count = length(split(":",var.cloud_users))
}


resource "aws_s3_bucket" "sonic_media" {
     bucket = var.bucket
  
}

resource "aws_s3_bucket_object" "upload_sonic_media" {
     bucket = aws_s3_bucket.sonic_media.id
     for_each = var.media
     key = substr(each.value,7,14)
     source = each.value
    #  content = 
     
  
}
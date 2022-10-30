

resource "local_file" "games" {  #Provider is #local
#   file     = "/root/favorite-games" #Error should be file name
  content  = "FIFA 21"

  #this block contains the arguments
}


resource "resource_type" "resouce_name" {  
  filename     = "/root/favorite-games"
  content  = "FIFA 21"
}


# Allows you to directly add in a sensitive content

resource "local_file" "games" {
  filename     = "/root/favorite-games"
  # content  = "FIFA 21"
  sensitive_content = "FIFA 21"
}

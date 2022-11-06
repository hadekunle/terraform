

#count converts output to a list

resource "local_file" "name" {
    filename = "/root/user-data"
    sensitive_content = "password: S3cr3tP@ssw0rd"
    count = 3    #count version
  
}


#changing to variables to avoid hard-coding 
#

resource "local_file" "name" {
    filename =  var.filename[count.index]
    sensitive_content = var.content
    count = length(var.filename)
  
}



# for_each in the list
#In order to use for_each, data must be in a map or set(string)
# toset, converts from a list to a set

resource "local_file" "name" {
    filename = each.value
    sensitive_content = var.content
    for_each = toset(var.users)
  
}

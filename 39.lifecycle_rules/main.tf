


# Great! We have now added the lifecycle rule and forced the resources to 
# be created first and then destroyed.
# What is the id of the file resource we just created?
# Run terraform show or terraform state show local_file.file to find out.

resource "local_file" "file" {
    filename = var.filename
    file_permission =  var.permission
    content = "This is a random string - ${random_string.string.id}"
    lifecycle {
        create_before_destroy =  true
    }

}

resource "random_string" "string" {
    length = var.length
    keepers = {
        length = var.length
    }
    lifecycle {
        create_before_destroy =  true
    }

}


# Now, update the configuration so that the resource super_pet is not 
# destroyed under any circumstances with a terraform apply command.
resource "random_pet" "super_pet" {
    length = var.length
    prefix = var.prefix
    lifecycle { 
        prevent_destroy = true
        
        }
}


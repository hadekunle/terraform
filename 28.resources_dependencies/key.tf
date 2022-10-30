
#Resource used to generate it's own key

resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits = 4096
}


# Now, let's use the private key created by this resource in another resource of type local file. Update the key.tf file with the requirements:

# Resource Name: key_details

# File Name: /root/key.txt
# Content: use a reference expression to use the attribute called private_key_pem of the pvtkey resource.

# When ready, run terraform init, plan and apply.

resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key_details" {
  filename = "/root/key.txt"
  content  = tls_private_key.pvtkey.private_key_pem
}

# Within this directory, create two local_file type resources in main.tf file.

# Resource 1:
# Resource Name: whale
# File Name: /root/whale
# content: whale

# Resource 2:
# Resource Name: krill
# File Name: /root/krill
# content: krill

# Resource called whale should depend on krill but do not use reference expressions.

# When ready, run terraform init, plan and apply.


resource "local_file" "whale" {
  filename = "/root/whale"
  content = "whale"
  depends_on = [
      local_file.krill
  ]
}


resource "local_file" "krill" {
  filename = "/root/krill"
  content = "krill"
}



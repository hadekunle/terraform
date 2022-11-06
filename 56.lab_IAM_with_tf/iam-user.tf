



# resource "aws_iam_user" "users" {
#   name = "mary"
# }




resource "aws_iam_user" "users" {
  name = var.project-sapphire-users[count.index]
  count = length(var.project-sapphire-users)

}

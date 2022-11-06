


# aws iam list-users



# $aws --endpoint http://aws:4566 iam list-users

#  {
#             "Path": "/",
#             "UserName": "mary",
#             "UserId": "mibylcb3od7vzl5ybs9k",
#             "Arn": "arn:aws:iam::000000000000:user/mary",
#             "CreateDate": "2022-10-31T22:23:54.367000+00:00"
#         }


# Use the subcommand to Create A User 


# Use the subcommand attach-user-policy. 
# Run: aws --endpoint http://aws:4566 \
#  iam attach-user-policy --user-name mary \ 
# --policy-arn arn:aws:iam::aws:policy/AdministratorAccess


# Use the subcommand to Create Group
# aws --endpoint http://aws:4566 iam create-group 
# --group-name project-sapphire-developers


# Use the subcommand to Add User To Group 
# aws --endpoint http://aws:4566 iam add-user-to-group \> --user-name jack \
# > --group-name project-sapphire-developers

# Use the subcommand to List-Attached-Group-Policies 
# aws --endpoint http://aws:4566 iam list-attached-group-policies 
# \> --group-name project-sapphire-developers

# Use the subcommand to Attach A Policy to a Group 
# aws --endpoint http://aws:4566 iam attach-group-policy \>
# --group-name project-sapphire-developers \
# > --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess



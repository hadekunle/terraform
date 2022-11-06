# Run the command: aws ec2 describe-instances --endpoint http://aws:4566

# Alternatively to just get the id of the EC2 created with this AMI and Instance Type, use filters and jq to filter the data:
# aws ec2 describe-instances --endpoint http://aws:4566 
# --filters "Name=image-id,Values=ami-082b3eca746b12a89" 
# |jq -r '.Reservations[].Instances[].InstanceId'
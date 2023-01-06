bucketname=pepe2pepe

echo "Creating the AWS S3 bucket and tagging it"

aws s3api  create-bucket --bucket $bucketname --region us-east-1
     
aws s3api  put-bucket-tagging --bucket $bucketname --tagging 'TagSet=[{Key=Name,Value="Gol-ball"}, {Key=Owner,Value="InfraTeam"}]'

sed -i -e 's|bucket = "prueba"|bucket = "'$bucketname'"|g'  root/provider.tf



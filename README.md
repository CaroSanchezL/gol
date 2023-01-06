# Gol-Ball Challenge

### Version 1.0.0

## Challenge
- Create an S3 bucket to store the tfstate file. The bucket must be tagged: Name=Gol-ball Owner=InfraTeam. 
- Create an EC2 instance with Nginx installed, that must display the Nginx Welcome page when reached by HTTP protocol using the EC2 Public IP
- Push the code to a public GitHub repository, and share the pull request. Do not merge until to master/main until the PR is approved
- Including documentation describing the steps taken in a README.md

## Technologies used

- Terraform
- Git
- AWS
- Bash scripting

## Overview:
- A script called create-s3 was developed, in order to be able to automate the creation of the s3 bucket with the required tags. In order to be able to create said bucket, we must be logged in to our AWS account, have the AWS cli installed and choose a bucket name that's available and replace it in the ENV variable.
- A Terraform infrastructure was created using a root directory as that calls aws-resources as modules. In this case, I duplicated the infrastructure in two AZs to ensure availability and fault tolerance (more can be done with this in mind, but it exceeds the requirements of the challenge)
- There's a user-data file that installs and starts the Nginx service inside the EC2
- In your browser, input the value of the EC2 public IP and you should be able to see the Nginx welcome page (sometimes the regular browser takes too long, you can try to access through your mobile phone which is faster)
# skillsync_terraform
# terrafrom-week4

## Terraform IaC Tool

#### Steps

# Configure Variables:
Review and update the aws_services_variables.tf, general_variables.tf, and vpc_variables.tf files to match the AWS environment. This includes specifying your VPC CIDR block, availability zones.

# Configure aws services

##### vpc, subnets, internet gateway, NAT gateway
##### Security on the subnet level
##### Route table association
##### AWS Roles
##### App and Web Servers
##### Application Load Balancer
##### Servers Security

##### Deploy services
# Initialize Terraform:
I ran the following command to initialize Terraform, download required providers, and set up the environment:

        terraform init
           
# Create an Execution Plan:
Generate an execution plan to preview the changes Terraform will make to the infrastructure:

        terraform plan

# Apply the Changes:
Deploy the infrastructure on AWS by running:

        terraform apply
 
# Verify Resources on AWS Console:
Logged in to the AWS Management Console and verify that the resources have been created as expected.

![pic1](https://github.com/wachiyel/skillsync_terraform/blob/main/screenshots/pic1.PNG) servers

 ![pic2](https://github.com/wachiyel/skillsync_terraform/blob/main/screenshots/pic2.PNG) service roles

 ![pic3](https://github.com/wachiyel/skillsync_terraform/blob/main/screenshots/pic3.PNG) vpc
 
 ![pic4](https://github.com/wachiyel/skillsync_terraform/blob/main/screenshots/pic4.PNG) subnets

 ![pic5](https://github.com/wachiyel/skillsync_terraform/blob/main/screenshots/pic5.PNG) route tables
 

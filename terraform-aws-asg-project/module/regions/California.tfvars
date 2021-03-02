  
region = "us-west-1"

cidr_block          = "10.0.0.0/16"
private_subnet1 = "10.0.1.0/24"
private_subnet2 = "10.0.2.0/24"
private_subnet3 = "10.0.3.0/24"
public_subnet1  = "10.0.101.0/24"
public_subnet2  = "10.0.102.0/24"
public_subnet3  = "10.0.103.0/24"

ami_id              = "ami-05d87f6a474302750"
instance_type       = "t2.micro"
ami_id_DB           =  "ami-0f5f86699bd7169ed"

tags = {
    Name        = "ASG_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    }
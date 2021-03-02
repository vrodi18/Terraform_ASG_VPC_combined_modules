region              = "us-west-2"
max_size            = 4
min_size            = 1
desired_capacity    = 1

cidr_block          = "10.0.0.0/16"
private_subnet1 = "10.0.1.0/24"
private_subnet2 = "10.0.2.0/24"
private_subnet3 = "10.0.3.0/24"
public_subnet1  = "10.0.101.0/24"
public_subnet2  = "10.0.102.0/24"
public_subnet3  = "10.0.103.0/24"

ami_id              =  "ami-00e87074e52e6c9f9" 
instance_type       = "t2.micro"
ami_id_DB           =  "ami-00e87074e52e6c9f9"                       

tags = {
    Name        = "ASG_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    }
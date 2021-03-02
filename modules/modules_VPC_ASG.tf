module "ASG" {
  source              = "../terraform-aws-asg-project"
  region              = var.region
  max_size            = var.max_size
  min_size            = var.min_size
  desired_capacity    = var.desired_capacity
  ami_id              = var.ami_id             
  ami_id_DB           = var.ami_id_DB
  vpc_id              = module.vpc-project.vpc
  private_subnet1     = module.vpc-project.private_subnets[0]             
  private_subnet2     = module.vpc-project.private_subnets[1]
  private_subnet3     = module.vpc-project.private_subnets[2]
  public_subnet1      = module.vpc-project.public_subnets[0]   
  public_subnet2      = module.vpc-project.public_subnets[1]
  public_subnet3      = module.vpc-project.public_subnets[2]

  instance_type = var.instance_type
 
}

module "vpc-project" {
  source        = "../terraform-aws-vpc"
  region        = var.region
  cidr_block    = var.cidr_block
  public_cidr1  = var.public_subnet1
  public_cidr2  = var.public_subnet2
  public_cidr3  = var.public_subnet3
  private_cidr1 = var.private_subnet1
  private_cidr2 = var.private_subnet2
  private_cidr3 = var.private_subnet3
  tags = {
    Name    = "VPC"
    Team    = "Fail Fast"
}
}
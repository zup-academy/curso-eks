provider "aws" {
  region = var.aws_region
}


data "aws_availability_zones" "available" {

}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"
  cluster_version = "1.21"
  cluster_name    = "ola-janelas"
  subnets         = module.vpc.public_subnets
  fargate_subnets = [module.vpc.private_subnets[2]]
  vpc_id          = module.vpc.vpc_id

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  worker_groups = [
    {

      name                 = "worker-group-linux"
      instance_type        = "t3.small"
      asg_desired_capacity = 2
      asg_max_size         = 2
      asg_min_size         = 2
      public_ip            = true
    },
    {
      name                 = "worker-group-windows"
      instance_type        = "m5.large"
      platform             = "windows"
      asg_desired_capacity = 2
      asg_max_size         = 2
      asg_min_size         = 1
      public_ip            = true
    },

  ]
}

module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  version              = "3.11.0"
  name                 = "vpc-curso-eks"
  cidr                 = "10.0.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  private_subnets      = ["10.0.14.0/24", "10.0.15.0/24", "10.0.16.0/24"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_nat_gateway   = true
}

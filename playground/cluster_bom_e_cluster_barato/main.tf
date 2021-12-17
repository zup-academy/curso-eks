provider "aws" {
  region = var.aws_region
}

locals {
  name   = "fargate-${random_string.suffix.result}"
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
  cluster_version = "1.20"
  cluster_name    = "curso-eks"
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  node_groups = {
    example = {
      desired_capacity = 1
      instance_types = ["t2.micro"]
      update_config = {
        max_unavailable_percentage = 50
      }
    }
  }

  manage_aws_auth = false

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
}

output "kubectl_config" {
  description = "Exibe config do kubectl gerado pelo módulo."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "Configmap para autenticar neste cluster."
  value       = module.eks.config_map_aws_auth
}

output "cluster_endpoint" {
  description = "Endpoint do control plane."
  value       = module.eks.cluster_endpoint
}


output "cluster_name" {
  description = "The name of the EKS cluster"
  # In v20, 'cluster_name' is the preferred output over 'cluster_id'
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

# Note: 'kubectl_config' and 'config_map_aws_auth' have been removed.
# You should now use the AWS CLI to connect:
# aws eks update-kubeconfig --region <your-region> --name <your-cluster-name>
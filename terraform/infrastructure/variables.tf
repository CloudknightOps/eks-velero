variable "region" {
  default     = "us-west-2"
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  default     = "eks_velero"
  type        = string
  description = "AWS profile configured for eks-velero project"
}
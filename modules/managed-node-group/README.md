<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.eks_mng](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_mng_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_mng_instance_type"></a> [mng\_instance\_type](#input\_mng\_instance\_type) | Instance type for the managed node group | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used as a prefix for all resources | `string` | n/a | yes |
| <a name="input_subnet_privat_1a"></a> [subnet\_privat\_1a](#input\_subnet\_privat\_1a) | Subnet ID from AZ 1A | `string` | n/a | yes |
| <a name="input_subnet_privat_1b"></a> [subnet\_privat\_1b](#input\_subnet\_privat\_1b) | Subnet ID from AZ 1A | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to all resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_instance_type"></a> [cluster\_instance\_type](#output\_cluster\_instance\_type) | n/a |
<!-- END_TF_DOCS -->
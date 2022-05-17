# aws-ec2-instance

Terraform module to create AWS EC2 Instance.
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | The AMI to use for the instance. By default it is the AMI provided by Amazon with Ubuntu 16.04 | `string` | `""` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Associate a public IP address with the instance | `bool` | `false` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availability Zone the instance is launched in. If not set, will be launched in the first AZ of the region | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of the instance | `string` | `"t2.micro"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of Security Group IDs to associate with EC2 instance. | `list(string)` | `[]` | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | VPC Subnet ID the instance is launched in | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
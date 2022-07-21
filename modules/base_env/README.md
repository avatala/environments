<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alert\_pubsub\_topic | The name of the Cloud Pub/Sub topic where budget related messages will be published, in the form of `projects/{project_id}/topics/{topic_id}` | `string` | `null` | no |
| alert\_spent\_percents | A list of percentages of the budget to alert on when threshold is exceeded | `list(number)` | <pre>[<br>  0.5,<br>  0.75,<br>  0.9,<br>  0.95<br>]</pre> | no |
| billing\_account | The ID of the billing account to associated this project with | `string` | n/a | yes |
| budget\_amount | The amount to use as the budget | `number` | `1000` | no |
| business\_code | The business code (ex. bu1). | `string` | n/a | yes |
| business\_unit | The business (ex. business\_unit\_1). | `string` | n/a | yes |
| enable\_hub\_and\_spoke | Enable Hub-and-Spoke architecture. | `bool` | `false` | no |
| env | The environment to prepare (ex. development). | `string` | n/a | yes |
| firewall\_enable\_logging | Toggle firewall logging for VPC Firewalls. | `bool` | `true` | no |
| folder\_prefix | Name prefix to use for folders created. Should be the same in all steps. | `string` | `"sec"` | no |
| gcs\_bucket\_prefix | Name prefix to be used for GCS Bucket | `string` | `"cmek-encrypted-bucket"` | no |
| key\_name | Name to be used for KMS Key | `string` | `"crypto-key-example"` | no |
| key\_rotation\_period | Rotation period in seconds to be used for KMS Key | `string` | `"7776000s"` | no |
| keyring\_name | Name to be used for KMS Keyring | `string` | `"sample-keyring"` | no |
| location\_gcs | Case-Sensitive Location for GCS Bucket (Should be same region as the KMS Keyring) | `string` | `"US"` | no |
| location\_kms | Case-Sensitive Location for KMS Keyring (Should be same region as the GCS Bucket) | `string` | `"us"` | no |
| optional\_fw\_rules\_enabled | Toggle creation of optional firewall rules: IAP SSH, IAP RDP and Internal & Global load balancing health check and load balancing IP ranges. | `bool` | `false` | no |
| org\_id | The organization id for the associated services | `string` | n/a | yes |
| parent\_folder |  It will place all the customer foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. | `string` | `""` | no |
| project\_prefix | Name prefix to use for projects created. Should be the same in all steps. Max size is 3 characters. | `string` | `"sec"` | no |
| secrets\_prj\_suffix | Name suffix to use for secrets project created. | `string` | `"env-secrets"` | no |
| terraform\_service\_account | Service account email of the account to impersonate to run Terraform | `string` | n/a | yes |
| windows\_activation\_enabled | Enable Windows license activation for Windows workloads. | `bool` | `false` | no |
| shared\_project\_id | Shared network project Id |`string` | `"sec-s-shared-prj-37e7"` | no |
| vpc\_network\_name | production shared vpc network name | `string` | `"sec-core-p-shared-base-gbl-vpc-01"` | no |
| central\_monitoring\_project | central monitoring project ID | `string` | `"sec-s-monitoring-prj-3302"` | no |
| business_unit | Name of the customer business unit | `string` | `"business_unit_1"` | no |
| project_code | project code ex:secret,kms,base,app... | `string` | n/a | yes | 
## Outputs

| Name | Description |
|------|-------------|
| base\_shared\_vpc\_project | Project sample base project. |
| base\_shared\_vpc\_project\_sa | Project sample base project SA. |
| bucket | The created storage bucket |
| env\_secrets\_project | Project sample peering project id. |
| keyring | The name of the keyring. |
| keys | List of created key names. |
| business\_unit\_folder_id | business unit customer folder id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

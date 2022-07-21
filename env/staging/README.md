<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| billing\_account | The ID of the billing account to associated this project with | `string` | n/a | yes |
| enable\_hub\_and\_spoke | Enable Hub-and-Spoke architecture. | `bool` | `false` | no |
| folder\_prefix | Name prefix to use for folders created. Should be the same in all steps. | `string` | `"fldr"` | no |
| org\_id | The organization id for the associated services | `string` | n/a | yes |
| parent\_folder |  It will place all the customer foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. The folder must already exist. Must be the same value used in previous step. | `string` | `n/a` | yes |
| project\_prefix | Name prefix to use for projects created. Should be the same in all steps. Max size is 3 characters. | `string` | `"prj"` | no |
| terraform\_service\_account | Service account email of the account to impersonate to run Terraform | `string` | n/a | yes |
| shared\_project\_id | Shared network project Id |`string` | `n/a` | yes |
| vpc\_network\_name | production shared vpc network name | `string` | `n/a` | yes |
| central\_monitoring\_project | central monitoring project ID | `string` | `n/a` | yes |
| project_type | Enter the project type | `string` | `n/a` | yes |
| env | enter the environment variable | `string` | `n/a` | yes |
## Outputs

| Name | Description |
|------|-------------|
| app_folder_id | app infra folder ID |
| base\_shared\_vpc\_project | Project sample base project. |
| base\_shared\_vpc\_project\_sa | Project sample base project SA. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

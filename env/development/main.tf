/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


module "env" {
  source = "../../modules/base_env"

  env                              = var.env
  shared_project_id                = var.shared_project_id
  vpc_network_name                 = var.vpc_network_name
  central_monitoring_project       = var.central_monitoring_project
# business_code                    = var.business_code
  project_type                     = var.project_type
  terraform_service_account        = var.terraform_service_account
  org_id                           = var.org_id
  billing_account                  = var.billing_account
  parent_folder_id                 = var.parent_folder_id
  project_prefix                   = var.project_prefix
  folder_prefix                    = var.folder_prefix
  enable_hub_and_spoke             = var.enable_hub_and_spoke
 
}

# resource "google_service_account" "project_owner" {
#   project      = module.env.base_shared_vpc_project
#   account_id   = "sa-${var.business_unit}-tf"
#   display_name = "sa with owner access"
# }


# resource "google_folder_iam_member" "folder_iam_member" {

#   folder = module.env.business_unit_folder_id
#   role   = "roles/owner"
#   member = "serviceAccount:${google_service_account.project_owner.email}"
# }

/**
 * Copyright 2021 Google LLC
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

variable "terraform_service_account" {
  description = "Service account email of the account to impersonate to run Terraform"
  type        = string
}

variable "org_id" {
  description = "The organization id for the associated services"
  type        = string
}

variable "env" {
    description = "Enter the environment value"
    type = string
  
}

variable "shared_project_id" {
    description = "Shared vpc project ID"
    type = string
}
variable "vpc_network_name" {
    description = "production shared vpc network name"
    type = string
}
variable "central_monitoring_project" {
  description = "Name of the central monitoring project"
  type        = string
  
}

variable "billing_account" {
  description = "The ID of the billing account to associated this project with"
  type        = string
}

variable "parent_folder_id" {
  description = "Optional - for an organization with existing projects or for development/validation. It will place all the example foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. The folder must already exist. Must be the same value used in previous step."
  type        = string
}


variable "project_prefix" {
  description = "Name prefix to use for projects created. Should be the same in all steps. Max size is 3 characters."
  type        = string
  default     = "prj"
}

variable "folder_prefix" {
  description = "Name prefix to use for folders created. Should be the same in all steps."
  type        = string
  default     = "fldr"
}

variable "enable_hub_and_spoke" {
  description = "Enable Hub-and-Spoke architecture."
  type        = bool
  default     = false
}
# variable "business_unit" {
#   description = "Enter the bussiness unit name"
#   type        = string

  
# }
# variable "business_code" {
#     description = "Business code for customer"
#     type        =string  
# }

variable "project_type" {
  description = "Enter the project type"
  type        = string
}



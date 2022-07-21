# /**
#  * Copyright 2021 Google LLC
#  *
#  * Licensed under the Apache License, Version 2.0 (the "License");
#  * you may not use this file except in compliance with the License.
#  * You may obtain a copy of the License at
#  *
#  *      http://www.apache.org/licenses/LICENSE-2.0
#  *
#  * Unless required by applicable law or agreed to in writing, software
#  * distributed under the License is distributed on an "AS IS" BASIS,
#  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  * See the License for the specific language governing permissions and
#  * limitations under the License.
#  */

# module "env_secrets_project" {
#   source                      = "../single_project"
#   impersonate_service_account = var.terraform_service_account
#   shared_project_id           = var.shared_project_id
#   vpc_network_name            = var.vpc_network_name
#   org_id                      = var.org_id
#   billing_account             = var.billing_account
#   folder_id                   = google_folder.env.id
#   environment                 = var.env
#   alert_spent_percents        = var.alert_spent_percents
#   alert_pubsub_topic          = var.alert_pubsub_topic
#   budget_amount               = var.budget_amount
#   project_suffix              = var.secrets_prj_suffix
#   project_prefix              = var.project_prefix
#   project_code                = "secret" #ex: base,secret,app,kms....

#   activate_apis = ["logging.googleapis.com", "secretmanager.googleapis.com", "cloudkms.googleapis.com"]

#   # Metadata
#   application_name  = "${var.business_code}-sample-application"
#   billing_code      = "5849"
#   primary_contact   = "marc-tomlinson"
#   secondary_contact = "nigel-walker"
#   business_code     = var.business_code
#   business_unit     = var.business_unit
# }


# resource "random_string" "bucket_name" {
#   length  = 5
#   upper   = false
#   number  = true
#   lower   = true
#   special = false
# }


# resource "google_monitoring_monitored_project" "secondary" {
#   metrics_scope = "locations/global/metricsScopes/${var.central_monitoring_project}"
#   name          = "locations/global/metricsScopes/${var.central_monitoring_project}/projects/${module.env_secrets_project.project_id}"
#   provider      = google-beta
# }

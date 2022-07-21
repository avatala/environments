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

module "base_shared_vpc_project" {
  source                      = "../single_project"
  impersonate_service_account = var.terraform_service_account
  shared_project_id           = var.shared_project_id
  vpc_network_name            = var.vpc_network_name
  org_id                      = var.org_id
  billing_account             = var.billing_account
  folder_id                   = google_folder.env.id
  environment                 = var.env
  vpc_type                    = "base"
  alert_spent_percents        = var.alert_spent_percents
  alert_pubsub_topic          = var.alert_pubsub_topic
  budget_amount               = var.budget_amount
  project_prefix              = var.project_prefix
  project_code                = "base"
  enable_hub_and_spoke        = var.enable_hub_and_spoke
 #sa_roles                    = ["roles/secretmanager.secretAccessor"]
  enable_cloudbuild_deploy    = false
  activate_apis = [
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "servicenetworking.googleapis.com",
    "compute.googleapis.com",
    "logging.googleapis.com",
    "cloudbuild.googleapis.com",
    "storage-api.googleapis.com",
    "monitoring.googleapis.com",
    "secretmanager.googleapis.com",
    "cloudkms.googleapis.com",
    "container.googleapis.com"
  ]

  # Metadata
  project_suffix    = "app-infra"
  application_name  = "${var.env}-${var.project_type}"
  billing_code      = "5849"
  primary_contact   = "marc-tomlinson"
  secondary_contact = "nigel-walker"
#   business_code     = var.business_code
  project_type      = var.project_type
}

# module "gcs_buckets" {

#   source             = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
#   version            = "~> 1.7"
#   project_id         = module.base_shared_vpc_project.project_id
#   location           = var.location_gcs
#   name               = "${var.gcs_bucket_prefix}-${module.base_shared_vpc_project.project_id}-${random_string.bucket_name.result}"
#   bucket_policy_only = true
# }

resource "google_monitoring_monitored_project" "primary" {
  metrics_scope = "locations/global/metricsScopes/${var.central_monitoring_project}"
  name          = "locations/global/metricsScopes/${var.central_monitoring_project}/projects/${module.base_shared_vpc_project.project_id}"
  provider      = google-beta
}



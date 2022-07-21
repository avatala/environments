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

org_id = "93473673659"

terraform_service_account = "org-terraform@prj-b-seed-814d.iam.gserviceaccount.com"

// The DNS name of peering managed zone. Must end with a period.
domain = "ideanomics.com."

// Optional - for an organization with existing projects or for development/validation.
// Must be the same value used in previous steps.
//parent_folder = "000000000000"

enable_hub_and_spoke = false
project_id  = "prj-s-shared-db7d"

//enable_hub_and_spoke_transitivity = true
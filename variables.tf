variable "keys" {
  description = "My Credentials"
  default     = #EDIT YOUR PATH HERE
}

variable "project" {
  description = "Project"
  default     = "teak-truck-412721"
}

variable "region" {
  description = "Region"
  default     = "uc-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "Dataset"
  default     = "chipotle_project"
}

variable "gcs_bucket_name" {
  description = "Bucket"
  default     = "chipotle"
}

variable "gcs_storage_class" {
  description = "Bucket Storage"
  default     = "STANDARD"
}

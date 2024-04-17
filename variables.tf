variable "keys" {
  description = "My Credentials"
  default     = "C:\\Users\\Micow\\Desktop\\terrademo\\keys\\keys.txt"
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
  description = "My BigQuery Dataset Name"
  default     = "petfinder_data"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "petfinder-dogs"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
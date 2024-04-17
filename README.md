**Problem Statement**

The goal of this project was to be able to help Chipotle managers be able to identify the highest-selling orders and most utilized ingredients for future ordering.

The dataset found for this project was found on Kaggle in the form of a .tsv file attached here: https://raw.githubusercontent.com/justmarkham/DAT8/master/data/chipotle.tsv

Although the dataset is a snapshot of a certain day of data this can be adopted to conduct ad-hoc reviews to assist managers in operations week-over-week given the proper data.

**Tools**

Python (Pandas, PyArrow) - Scripting

Terraform - Infrastructure

Mage - Data Orchestration/Transformation 

Google Cloud Storage - Data Lake

BigQuery - Data Warehousing

Looker Studio - Data Viz

**DAG:** Data Source -> Mage -> Data Lake (GCS) **and** Data Warehouse (BigQuery) -> Data Visualization (Looker)


**Data Cleaning:**

With the data in the column choice_description, all of the data contained bracketed values and commas rather than individual items per column. To remedy this, an .explode() function was utilized alongside a str() function to remove data issues

**How to Recreate**

For you to recreate you should have a working GCP account (trial included), Terraform in your IDE of choice (VSCode - HashiCorp Terraform).

**Terraform:**
Using the terraform files from the repo you'll need to have your GCP Credentials within the key file for your path to accept and read.

Create a path similar to this one for your own purpose ./chipotle/keys/my-creds.json. Alongside your json file you can also leave the downloaded .tf files in here also.

Within the variable.tf you'll need to update your GCP path to hold your credentials and change your bucket/objects.

Attached is the files from this repo, please adjust the formatting to match your GCP credentials/pathing:
_main.tf
variable.tf_

terraform init
terraform plan
terraform apply

Run the terraforming snippet

**Mage**

For this project mage was utilized in the extraction, transformation and loading data using batch-level processing. Per guidelines mage is an acceptable form of transformation outside of PySpark and DBT for this project, transformation utilized the pandas library on Python.

To recreate please create a new pipeline project.
Download the py scripts provided within this repo and follow the order provided in the photo below to set up your data downloader (data_chipotle.py), transformer (clean_chipotle.py) and exporting blocks (export_chipotle_to_gcs.py & export_chipotle_to_bq.py).

**Mage Breakdown:**

![image](https://github.com/micow980/chipotle_project/assets/110073973/8a9c22ea-a8a8-4b59-89ad-7ed7acecfb3a)

Visuals - Dashboard created via Google Looker

![image](https://github.com/micow980/chipotle_project/assets/110073973/138db54a-733d-44c3-bb0f-6d83147349af)


**Problem Statement**

The goal of this project was to be able to help Chipotle managers be able to identify the highest-selling orders and most utilized ingredients for future ordering.

The dataset found for this project was found on Kaggle in the form of a .tsv file attached here: https://raw.githubusercontent.com/justmarkham/DAT8/master/data/chipotle.tsv

Although the dataset is a snapshot of a certain day of data this can be adopted to conduct ad-hoc reviews to assist managers in operations week-over-week given the proper data.

**Tools**

**Languages Used**: Python (Pandas, PyArrow)

**Infrastructure as Code:** Terraform

**Data Orchestration:** Mage

**Data Transformation:** Mage

**Data Lake:** Google Cloud Storage

**Data Warehouse:** BigQuery

**Data Visualization:** Looker Studio


**Data Cleaning:**
With the data in the column choice_description, all of the data contained bracketed values and commas rather than individual items per column. To remedy this, an .explode() function was utilized alongside a str() function to remove data issues

**Mage Breakdown:**

![image](https://github.com/micow980/chipotle_project/assets/110073973/8a9c22ea-a8a8-4b59-89ad-7ed7acecfb3a)

Visuals

![image](https://github.com/micow980/chipotle_project/assets/110073973/138db54a-733d-44c3-bb0f-6d83147349af)


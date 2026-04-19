# end-to-end-data-analytics-aws-snowflake-powerbi
End-to-end data analytics project using AWS S3, Snowflake, and Power BI to process and visualize agricultural data.


#  Agriculture Data Analytics using AWS, Snowflake & Power BI

##  Project Overview

This project demonstrates an end-to-end data analytics pipeline where agricultural data is stored in AWS S3, processed using Snowflake, and visualized through interactive dashboards in Power BI.



##  Tech Stack

* AWS S3 (Cloud Storage)
* Snowflake (Data Warehouse)
* Power BI (Data Visualization)

##  Architecture

CSV Dataset → AWS S3 → Snowflake → Power BI Dashboard

## Implementation Steps

1. Uploaded agricultural dataset to AWS S3 bucket
2. Created IAM role for secure access between AWS and Snowflake
3. Configured Snowflake Storage Integration
4. Created external stage to read data from S3
5. Loaded data into Snowflake using `COPY INTO`
6. Performed data transformations using SQL queries
7. Connected Snowflake to Power BI
8. Built interactive dashboards for analysis



##  AWS Usage

* Stored raw dataset in S3 bucket
* Used IAM role for secure data access
* Enabled integration between Snowflake and AWS


##  Snowflake Operations

* CREATE STORAGE INTEGRATION
* CREATE STAGE
* COPY INTO
* Data transformation using SQL

---

##  Dashboard Insights

* Analysis of rainfall vs crop yield
* Seasonal trends in agriculture
* Impact of soil type on productivity
---
 

 

##  Conclusion

This project showcases a real-world cloud-based data analytics workflow integrating AWS, Snowflake, and Power BI to generate meaningful insights from raw data.

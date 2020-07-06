h1. Description 

AWS Athena is a code-free, fully automated, zero-admin, data pipeline that performs database automation, Parquet file conversion, table creation, Snappy compression, partitioning, and more. It is an interactive query service to analyze Amazon S3 data using standard SQL.

h1. Main Features 

h5. General :
* Is serverless.
* Supports CSV, JSON, Gzip files and columnar formats like Apache Parquet
* Encryption with Server-Side AES-256 or KMS with S3
* Automatically scale parallel queries.

h5. Used for :
* To query log files stored in S3 like ELB logs, S3 logs.
* Generate Business reports on data stored in S3
* Analyse AWS cost and usage reports
* Run queries on click-stream data
* Data science, machine learning, visualizations, ETL, and reporting

h1. Cost Strategies 

You only pay for the queries you run per TB scanned.

h1. Service constrains 

h5. General : 
* Parameterized queries are not supported. 
* Good for company that use S3 and need a quick, but robust query service. 
* For Redshift environment see Redshift Spectrum. 

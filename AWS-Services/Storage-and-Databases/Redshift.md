h1. Description 

Redshift is a fast and powerfull, fully managed, petabyte-scale data warehouse service in the cloud. It is an efficient solution to collect and store all your data and enables you to analyze it using various business intelligence tools to acquire new insights for your business and customers.

h1. Main Features 
 
h5. Performance : 
* Very fast for loading data and querying it for analytical and reporting purpose. 
* Massively Parallel Processing (MPP) Architecture acrosss multipple nodes. 
* Very good for Huge and repetitive data. 
* Automatically distribute Data and query load across all nodes.  
* Make it easy to add nodes to your data warehouse and enables you to maintain fast query performance as your data warehouse grows. 
* Use for OLAP. 

h5. Transaction ; 
* OLTP (Online Transaction Processing) 
** OLTP Database are suited for application that read and write data frequently. 
** Good candidate for backing an online ordering system that process hundreds of orders a minute. 
** The OLTP queries are simpler and short and hence require less time in processing, and also requires less space. 
** Example : 
*	* Online Banquing 
* OLAP (Online Analytic Processing) 
** Optimized for complex queries against large dataset.  
** Need heavy compute and storage requirement. 
** Multiples servers databases are partitioned for having a portion of the databases (groupment of OLTP DB). 
** Example : 
*	* BI 

h5. Configuration : 
* Single Node (160GB) 
* Multi-Node 
** Leader Node (manages client connections and receives queries). 
** Compute Node (store data and perform queries and computations). Up to 128 Compute Nodes. 
* SORT KEY and DIST KEY needs to be configured here for improvements in complex queries involving JOINs. 

h5. Backups 
* Enabled by default witha 1 day retention period to a maximum of 35. 
* Always attempt to maintain at least three copies of your data (the original and replica on the compute nodes and backup in AMazon S3). 
* Can also asynchronously replicate your snapshots to S3 in another region for disaster recovery 

 

h5. Security : 
* Encrypted in transit using SSL 
* Encrypted at rest using AES-256 
* By default Redshift take care of key management.  
** manage your own keys through HSM 
** AWS Key Management Service 

h1. Cost Strategies 
 
h5. Attractive and transparent pricing :  
* Customer can start small for just 0.25$ per hour with no commitments or upfront costs and scale to a petabytes or more for 1000 per terabyte per year. 
* Compute Node Hours (total number of hours you run across all your compute nodes for the billing period). 
* Leader node is not charged. 

h1. Service constrains 
 
h5. General :
* if you have a distributed system and it writes data on Redshift, you will have to handle the uniqueness yourself either on the application layer or by using some method of data de-duplication.
* Parrallel Loading is only support for S3, DynamoDB and EMR as a data source.
* To serve data to a web app you need to add in betwen to redshift a chaching layer or a Vanilla Postres instances.

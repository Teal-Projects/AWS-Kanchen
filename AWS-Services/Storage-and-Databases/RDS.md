# Description 

The service is designed to store relational database instances in the cloud for access by applications and as a way to provide relational databases for analytics, reporting, and business dashboards within those apps.

# Main Features 

### Flavors :
* SQL Server
* Oracle
* Mysql Server
* PostgreSql
* Aurora (Amazon propriatary DB)
* MariaDB

### General :
* RDS run on virtual machines
* RDS is not serverless
* Aurora Serverless is Serverless
* Multi-AZ_ For Disaster Recovery
* Read Replicas - For Performance

### Backup :
* Automated Backup :
	* Enabled by default
	* The backup data is stored in S3, you get free storage space equal to the size of your database
	* Allow to cover in any point of time with a retention period betwen 1 and 35 days.
	* Take full dailly snapshot + log
	* The backup process :
		* AWS Choose the most recently daily backup
		* Apply transaction logs relevant to that day
		* During backup the storage I/O may be suspended.
	* Database Snapshots :
		* Are done manually.
		* The restored version of the database will create a new RDS with a new DNS endpoint.

### Encryption At Rest :
* Suported for all the DB flavor.
* Done using the AWS-KMS
* Snapshot are encrypted as well

### Multi-AZ Support
* Available for all DB except Aurora.
* Allow you to have an exact copy of your production database in an other Availability Zone. AWS handles the replication.
* The failover process is automatique
* You can force a failover from one AZ to another by rebooting the RDS instance.

### Read Replica (Amazon RDS Read Replicas provide enhanced performance and durability for RDS database (DB) instances)
* Available for MySQL Server, PostgreSQL, MariaDB, Oracle & Aurora
* Allow to have a read-only copy of a production DB
* Used to increase performance
* It is use for very read-heavy database workloads.
* Used for scalling
* Must have automatic backup tunr on.
* Can have up to 5 read replica copies of any DB
* Can have read replica of read replica (But be carrefull for the latency).
* Each read replica hav is DNS end point
* read replic on Multi-AZ
* Read replica in a second region
* Read replica can be promoted to master. 

# Cost Strategies 

https://calculator.aws/#/

# Service constrains 
 
### General :
* You cannot log in to these operating systems. Patching of the VM and DB is Amazon'z responsibility 

# Description 

Is a MySQL and PostgreSQL compatible relational database engine that combines the speed and availability of high-end commercial databases with the simplicity and cost-effectiveness of open source databases.

# Main Features 

### General :
* Provides up to 5x better performance than MySQL and 3x better than PostgreSQL database at much lower price point.
* Compute resources can scale up to 32vCPUs and 244GB of Memory
* 2 copies of your data is contained in each availability zone, with minimum of 3 availability zones. 6 copies of your data.
* Use for OLTP transaction.

### Scaling Aurora :
* Designe to transparently handle the loss of up to two copies of data without affecting database write availability and up to three  copies without affecting read availability.
* Storage is self-healing. Data blocks and disks are continuously scanned for errors and repaired automatically.

### Aurora replicas :
* Aurora Replicas (currently 15)
* MySQL Read Replicas (currently 5)
* PostgreSQL (currently 1)

### Backups :
* Automated backups are always enabled. Backups do not impact database performance.
* You can share Aurora Snapshots with other AWS accounts.

### Aurora Serverless :
* Is an on demand autoscalling Aurora DB.
* Automatically starts up, shutdown, and scales capacity up and down based on your application needs.
* When you whant a cheap solution , and have no idea when people will access the data  

# Cost Strategies 

###Aurora Mysql:
* Start with 0.041$ per hours for its lowest instant type.

### Aurora Postgres:
* 0.082$ per hours for its lowest instant type.

# Service constrains 

### General :
* Start with 10GB, scales in 10GB increments to 64TB (Storage Autoscalling). 

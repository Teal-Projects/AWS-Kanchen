# Description  

  
 DynamoDB is a fast and and flexible NoSQL database service for all application that need consistent, single digit millisecond latency at any scale. 
  

# Main Features  


### General : 
* Fully managed Database 
* Support document and key-value data models 
* Stored on SSD 
* Spread across 3 geographically distinct data centres 
* usefull for : 
	* Mobil 
	* Web 
	* gaming 
	* ad-tech 
	* IoT 
	* etc... 
 

### Consitency : 
* Eventual Consistent Reads 
	* Consistency across all copies of data is usually reached within a second. (After puting an object the object can be read in a second). 
* Strongly Consistent Reads 
	* Return a result that reflects all writes that received a successful response prior to the read. 

# Cost Strategies  


### On-demand capacity mode 
* You're charge for the data reads and writes your application perform on tables. 
	* Better to use for : 
		* Creating new tables with unknown workloads. 
		* Having unpredictable application traffic 
		* Prefering the ease of paying for only what you use. 

### Provisioned capacity mode 
* You specifiy the number of read and writes per seconde that you expect your application to require. 
	* Better to sue for : 
		* Having a predictable application traffice. 
		* Run applications whose traffic is consistent or ramps gradually. 
		* Can forecast capacity requirements to control costs. 


# Service Bundaries  
### Cost : 
* DynamoDB costs spiral out of control. 
* A partition is a maximum of 10GB. 
* Not good for fast growing dataset. 
* If a table ends up having a few hot partitions that need more IOPS, total throughput provisioned has to be high enough so that ALL partitions are provisioned with the throughput needed at the hottest partition. This can lead to dramatic cost increases and frustrated engineers. 
* If you have latency with DynamoDB, you can add a service caching or DAX.. 

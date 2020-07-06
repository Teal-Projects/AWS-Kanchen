h1. Description 


Amazon Simple Storage Service (or Amazon S3) is a service offered by AWS that provides object storage through a web interface with the goal to make web-scale computing easier for developers. This service enables organizations of all sizes and across various industries to store large amounts of data for a variety of use cases including websites, mobile applications, disaster recovery, and big data analytics. 
 

h1. Main Features 
 

h5. S3 Bucket: 
* Allow to upload files 
* Files are storeded in bucket 
* Tiered storage 
* Lifecycle Management 
* Versioning 
* Encryption 
* MFA Delte 
* Secure with ACL and Bucket Policies 
 

h5. Object (files): 
* Key (name of the object) 
* Value (data) 
* Version ID (Versioning) 
* Metadata (Info on Data) 
* Subresources 
* ACL 
* Torent 
* When Successful upload will generate a HTTP 200 status code 
 

h5. S3 Encryption 
* Encryption in transit ->Encrypt data transit -> achieved by TLS 
* Encryption st rest -> Encrypt the data itself 
* Server Side (Encryption managed by AWS) 
* S3 Manages Keys - SSE-S3 
* AWS Key Management Service, Managed Keys - SSE-KMS 
* Server Side Encryption With Customer Provided Keys - SSE-C 
* Client side managed by you 
 

h5. S3 Versionning 
* If turn on , the size of the bucket will increaze expenentially. 
* Store all versions of an object (including all writes and delete objects). 
* Great backup tool 
* Once enabled, it cannot be disabled, only suspended. 
* Integrates with lifecycle rules 
* Activate MFA for deleting objects. 
 

h5. Share across different account 
* Using Bucket policies & IAM. Programmatic access only. 
* Using Bucket ACL & IAM. Programmatic access only. 
* Cross-account IAM Roles. Programmatic and Console access. 
 

h5. Cross Region replication 
* Versioning must be enabled on both the source and the destination buckets. 
* File in an existing bucket are not replicated automatically. All subsequent updated files will be. 
* Delete markers and individual deleting are not replicated 
 

h5. S3 Transfer Acceleration 
* Use edge location. 
* tool for testing upload speed in different region : https://s3-accelerate-speedtest.s3-accelerate.amazonaws.com/en/accelerate-speed-comparsion.html 
 

h1. Cost Strategies 
 

h5. For choosing the right S3 solution ask yourself this questions : 
* How often do my data need to be accessed? 
* Can I afford to have my data accessible in one Availability Zone ? 

h5. S3 Standard 
* Active, frequently accessed data 
* Milliseconds access 
* 3>= AZ 
* $0.0210?GB 

h5. S3 INT 
* Data with changing access pattern 
* Milliseconds access 
* 3 >= AZ 
* $0.0210 to 0.00125/GB 
* Monitoring fee per obj. 
* Min storage duration 

h5. S3 S-IA 
* Infrequentaly accessed data 
* Milliseconds access 
* 3 >=  AZ 
* $0.0125/GB 
* Min storage duration 
* Min object size 

h5. S3 Z-IA 
* Re-creatable less access data 
* Milliseconds access 
* 1 AZ 
* $0.0100/GB 
* Retrieval fee per GB 
* Min storage duration 
* Min object size 

h5. S3 Glacier  
* Archive data 
* Select minutes or hours 
* 3 >= AZ 
* $0.0040/GB 
* Retrieval fee per GB 
* Min storage duration 
* Min object size 

h5. Deep Archive 
* Archive Data 
* Hours to access 
* 3 >= 3 AZ 
* $0.00099/GB 
* Retrieval fee 
* Min storage duration 
* Min Object size 
 

h5. For S3 Bucket I can be charges for : 
* Storage 
* Requests 
* Storage Management Pricing 
* Data Transfer Pricing 
* Transfer Acceleration 
* Cross Region Replication Pricing 


h1. Service Constrains 

h5. General : 
* file can be from 0 to 5TB 
* the name of the bucket is unique glabally because it's a web address 
* By default you can create up to 100 buckets per AWS accounts. 

h5. Data consistency & Guarantee : 
* Built for 99,99% availability for the s3 platform 
* Amazon Guarantee 99.9% availability 
* Amazon Guarantee 99.999999999% your file will not be lost 
* We can Read traight after writting the object on the bucket 
* When a new version is uploaded, only the new version will be read 

h5. Durability : 
* Reduced Redundancy Storage is the only S3 Class that does not offer 99.999999999% durability and therefore any of the answers that contain Reduced Redundancy Storage cannot be correct. 

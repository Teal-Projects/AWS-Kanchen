h1. Description 

AWS Storage Gateway lets you connect local storage to cloud storage in three ways: by saving individual files to cloud storage, by mounting a cached or stored volume as a local drive, or by exposing cloud storage as a tape interface, which can connect to legacy backup systems.

h1. Main Features 
 
h5. Types : 
* File Gateway (NFS & SMB) 
** Store local files as object in a S3 bucket 
** Can be mount locally (NFS) 
** Can store and retrieve files directly using the SMB protocol. 
* Volume Gateway (iSCSI) 
** Cached Volumes 
*	* Stor frequently accessed data locally using EBS with S3 as main storage. 
*	* All un-frequently accessed data is stored to S3, reducing the load on local store. 
** Stored Volumes 
*	* Your local storage is your main.  
*	* Perform asynchronuouse backup to S3 as an EBS snapshot. It's an off-site backup of a local drive. 
* Tape Gateway (VTL)  
** Store your data frome Tape drive into a virtual tape backed by S3.  

h1. Cost Strategies 

h5. File Gateway :
* Standard S3 pricing
* Plus $0.01 per GB written by Local storage Gateway.



h5. Volume Gateway :
* Standard EBS pricing
* Volume storage is billed at $0.023 per GB-month
* Plus $0.01 per GB written by Local storage Gateway.



h5. Tape Gateway :
* Depending on the S3 storage tier.
* $0.023 per GB-month for S3
* $0.004 per GB-month for S3 Glacier
* $0.00099 per GB-month for S3 Glacier Deep Archiv

h1. Service constrains 

https://docs.aws.amazon.com/storagegateway/latest/userguide/resource-gateway-limits.html

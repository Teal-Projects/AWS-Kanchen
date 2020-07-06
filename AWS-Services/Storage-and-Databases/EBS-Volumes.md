h1. Description 


Elastic Bloc Store, provide persisten block storage volumes for use with Amazon EC2 instances in the AWS Cloud. Each Amazon EBS volume is automatically replicated within its Availability Zone to protect you from component failure, offering high availability and durability 


h1. Main Features 
 

h5. Snapshot : 
* Snapshot exist on S3. Stop the instances befor to take the snapshot. 
* To move an EC2 volume from one AZ to an other, take a snapshot of it, create an AMI from the snapshot and then use the AMI to launch the EC2 instance in a new AZ. 
* To move ans EC2 volume from one region to another, take a snapshot of it, create an AMI from the snapshot and then copy the AMI from one region to the other. Then use the copied AMI to lauch the new EC2 instance in the ne region. 

 
h5. Encrypt Root Device Volumes & Snapshots 
* Snapshot of encrypted volumes are encrypted automatically. Like Volume restored from encrypted snapshot. 
* You can share with other AWS account or made public a snapshots, but only if they are unencrypted. 
* You can encrypt root device volumes upon creation of the EC2 instance. 
* The process to encrypt an Root Device volume if not encrypt from the beginning : 
* Create a Snapshot of the unencrypted root device volume. 
* Create a copy of the snapshot and select the encrypt option. 
* Create an AMI from the encrypted snapshot. 
* Use that AMI to launch new encrypted instances. 
 

h5. EBS Storage Types : 
* General Purpose (SSD) 
* Provisioned IOPS (SSD), for very very fast  IOPS 
* Throughput Optimised Hard Disk Drive 
* Cold Hard Disk Drive 
* Magnetic  

h1. Cost Strategies 

https://aws.amazon.com/ebs/pricing/

h1. Service Constrains 

h5. General :
* Where ever the instances is the EBS Storage will be in the same region.
* When an instances is terminated, the root volume is not lonnger available, but the created EBS are still available.
* Termination Protection is turned off by default.
* Maximum storage size of 16TB
* Use of SSD backed and Provisioned IOPS is recommended for dedicated IO operations as needed
* Only be access by an EC2 instances
* 99.99% available

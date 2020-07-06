h1. Description 

EC2 is a service that allows business subscribers to run application programs in the computing environment. The EC2 can serve as a practically unlimited set of virtual machines.

h1. Main Features 
 
h5. General : 
* Termination Protection is turned off by default 
* The EBS root volume of the ANI can be encrypted 

h5. Creation Steps of an EC2 Instances : 
* Choose AMI 
* Choose the instances type 
* Configure instance 
* Add storage 
* Add Tags 
* Configure Security Group 
* Review  

h5. Metadata : 
* Used to get information about an instances. 
* curl http://<server_IP>/latest/meta-data/ 
* curl http://<server_IP>/latest/user-data/  

h1. Cost Strategies 
 
h5. On-Demand
* Pay for compute capacity by the hour or the second depending on which instances you run.
* Recommended for :
** Users that prefer the low cost and flexibility of Amazon EC2 without any up-front payment or long-term commitment
** Applications with short-term, spiky, or unpredictable workloads that cannot be interrupted
** Applications being developed or tested on Amazon EC2 for the first time.

h5. Spot instances
* Allow you to request spare Amazon EC2 computing capacity for up to 90% off the On-Demand price.
* Recommended for :
** Applications that have flexible start and end times.
** Applications that are only feasible at very low compute prices.
** Users with urgent computing needs for large amounts of additional capacity.

h5. Saving Plans
* lexible pricing model that offer low prices on EC2 and Fargate usage, in exchange for a commitment to a consistent amount of usage (measured in $/hour) for a 1 or 3 year term.

h5. Reserved Instances
* Provide you with a significant discount (up to 75%) compared to On-Demand instance pricing. In addition, when Reserved Instances are assigned to a specific Availability Zone, they provide a capacity reservation, giving you additional confidence in your ability to launch instances when you need them.
* Recommended for :
** Applications with steady state usage.
** Applications that may require reserved capacity.
** Customers that can commit to using EC2 over a 1 or 3 year term to reduce their total computing costs.

h5. Dedicated Hosts
* a physical EC2 server dedicated for your use. Dedicated Hosts can help you reduce costs by allowing you to use your existing server-bound software licenses, including Windows Server, SQL Server, and SUSE Linux Enterprise Server (subject to your license terms), and can also help you meet compliance requirements.
* Can be purchased On-Demand (hourly).
* Can be purchased as a Reservation for up to 70% off the On-Demand price.

h1. Service constrains 



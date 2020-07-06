h1. Description 

Placement group determines how instances are placed on underlying hardware.

h1. Main Features 

h5. General :
* Placement Groups cannot be merged.
* The name of a placement group has to be unique within your aws account.
* Only certain instance types can be attached to placement groups, c, g, m, i
* You can’t move existing instances into a placement group.

h5. Cluster
* clusters instances into a low-latency group in a single AZ.
* Recommanded for applications that need low network latency, high network throughput.
h5. Partition
* spreads instances across logical partitions, ensuring that instances in one partition do not share underlying hardware with instances in other partitions.
* Each partition have is own network and power source.
* Maximum of 7 partitions per AZ.
h5. Spread
* spreads instances across underlying hardware
* Can span multiple AZ.
* Can only have 7 running instances per Availability Zone.

h1. Cost Strategies 
 

h1. Service constrains 

h5. General :
* Instances that were not originally created in a placement group, cannot be added to a placement group.
* Placement groups can’t be combined into one. Although instances inside a placement group can communicate with outside instances.
* All instances of a placement group must reside in the same AZ.
* You can’t have 2 or more placement group with the same name.

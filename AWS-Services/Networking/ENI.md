# Description 

An elastic network interface is a logical networking component in a VPC that represents a virtual network card.

# Main Features 

### General :
* Plugable, can be assigne to different instances.
* An instances can have multiple network interfaces.
* Every instance in a VPC have a default network interface.
* You can enable VPC flow log on the network interface to capture IP traffic.

### virtual network card containning :
* A primary IPV4 from the VPC range
* One or more secondary IPV4 from the VPC range
* One Elastic IP per private IPV4.
* One public IPV4
* One or more IPV6.
* One or more Security Groups.
* A MAC address
* A source/destination check flag
* A description.

### Used for :
* Create a management network
* Use network and security appliances in your VPC.
* Create dual-homed instances with workloads/roles on distinct subnets.
* Create a low-budget, high-availability solution.

# Cost Strategies 
 
Charges just for additional public IP on the same instances. 

# Service constrains 
 
### General : 
* The maximum of network interface per instances depends on the instance type. 

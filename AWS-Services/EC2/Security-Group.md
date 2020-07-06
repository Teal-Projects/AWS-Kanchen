h1. Description 

security group controls traffic to or from an EC2 instance according to a set of inbound and outbound rules.

h1. Main Features 
 

h5. General : 
* A change in Security Group take effect imediately.
* You can not block specific IP addresses, you  have to use Network Access Control Lists.
* Each security group can be applied to one or more instances, even across subnets.
* Each instance is required to be associated with one or more security groups.
* AWS evaluates all rules for all the security groups associated with an instance before deciding whether to allow traffic in or out.
* The most permissive rule is applied.
* Security group rules are implicit deny, which means all traffic is denied unless an inbound or outbound rule explicitly allows it.
* Security groups are stateful; they automatically allow return traffic, no matter what rules are specified.

h1. Cost Strategies 

Free of charges.

h1. Service constrains 

h5. General :
* You can have 60 inbound and 60 outbound rules per security group.

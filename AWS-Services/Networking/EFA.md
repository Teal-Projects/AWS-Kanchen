# Description 

An Elastic Fabric Adapter (EFA) is a network device that you can attach to your Amazon EC2 instance to accelerate High Performance Computing (HPC) and machine learning applications. EFA enables you to achieve the application performance of an on-premises HPC cluster, with the scalability, flexibility, and elasticity provided by the AWS Cloud.

# Main Features 

### General :
* Enhance performance of inter-instance communication.
* Provide lower and more consistent latency.
* Can scale depending on application requirement.
* EFA can use OS-bypass. Enable Machin learning applications to bypass the operating system kernel and communicate directly with the EFA. Only available on Linux.

# Cost Strategies 
 
# Service constrains 

### General : 
* Only one EFA per instances. 
* OS-bypass traffic is limited to a single subnet. 
* The EFA must be a member of a security group that allows all inbound and outbound traffic to and from the security group itself. 

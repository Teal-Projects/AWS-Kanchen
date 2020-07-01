# Description 

Autoscaling group treats a collection of EC2 instances as a logical group to automatically scale it in size and quality. It allows for dynamic management and gives you further features that reduce the management overhead. Two of these features are scaling policies and health check replacements.

# Main Features 



### 3 components : 
* Groups 
	* Logical component like Webserver group or Application group or Database group etc.. 
* Configuration Templates 
	* Groups use a launch template as a configuration template for its EC2 instances. You can specifiy information such as the AMI ID, instance type, key pair, security groups amd block device mapping for your instances. 
* Scaling Option 
	* Provide several ways for you to scale your Auto Scaling groups. For example, you can configure a group to scale based on the occurence of specified conditions (dynamic scaling) or on a schedule. 
	* Options : 
	* Maintain current instance levels at all times 
		* For example hey I want a minimum of 5 instances. 
	* scale manually 
		* You specify only the change max, min or desired state. 
	* Scale based on schedule 
		* Hey on Monday at 10am I want 10 instances. 
	* Scale based on demand 
		* Use scalling policies for defining the paramer that the scalling groups will be based on. 
	* Use predictive scaling 
		* Use a proactive and reactive approches. 

# Cost Strategies 
 

# Service constrains 
 

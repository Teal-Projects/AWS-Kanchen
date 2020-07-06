h1. Description 

AWS AMI is a virtual image that can be used to create an instance of a virtual machine.

h1. Main Features 

h5. General
* The template that is the root volume for the AWS instances (example, application server, operating system, or web application).
* Launch permissions that determine which AWS account can use this AMI to set up an instance.
* Block device mapping that specifies the root device volumes that is attached to the AWS instance after launch.

h5. Select your AMI based on : 
* region 
* Operating system 
* Architecture 
* Launch permissions 
* Storage for the  Root Device (Root Device Volume)  
* Instance Store (Ephemeral Storage). 
* EBS Backed Volumes 

h5. AMI Category : 
* EBS-backed instances :
** the root device for an AWS instance – launched using AMI – is an Amazon EBS volume that has been created from Amazon EBS.
** The EBS backed instance can be stop without losing all the data on it. 
** When an Instance is terminated , you can ask AWS to keep the root device volume. 
* Instance store-backed instances :
** the root device for an AWS instance – launched using Ami – is an Amazon instance store volume that has been created from an Amazon S3 template.
** This volume can not be stopped. If the underlying host fails, you will lose all your data.  

h1. Cost Strategies 
 
There is no cost to make an AMI itself, but if you're making it from a running instance you will pay the fees for running a micro instance.

h1. Service constrains 
 

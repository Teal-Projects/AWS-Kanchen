h1. Description 

h1. Main Features 
 

h5. General : 
* Centralised control of your AWS account 
* Shared Access to your AWS Account 
* Granular Permissions 
* Identity Federation (Including Active Directory, Facebook, Linkedin etc) 
* Multifactor Authentication 
* Provides temporary access for users/devices and services 
* allow setep Password policies 
* Integration AWS services 
* PCI DSS Compliance 
* New users get an Access key ID and secret key 

h5. Components :
* Users
* Group
* Policies (JSON document to control permission)
* Roles (Allowing one part of aws to do an other part).

h5. Roles
* Roles are much more easier to manage than the access and secret keys
* Roles can be assigned to EC2 instances after it is created.
* Roles are universal, you can use it in any region.

h5. RAM
* Resource Access Manager. Allows resources sharing between accounts.
* Ressources that can be share : 
** App Mesh, Aurora, CodeBuild, EC2, EC2 Image Builder, License Manager, Resource Groups, Route 53 

h1. Cost Strategies 

IAM roles are free of charge.

h1. Service constrains 
 

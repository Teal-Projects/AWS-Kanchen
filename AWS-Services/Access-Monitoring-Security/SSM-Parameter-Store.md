h1. Description 

AWS Systems Manager is a product designed to help you manage large groups of servers deployed into the cloud.

h1. Main Features 
 
h5. General : 
* Component of AWS Sytems Manager (SSM) 
* Secure serverless storage for configuration and secret : 
** Password 
** Database connection string 
** License codes 
** API keys 
* Values can be stored encrypted (KMS) or plaintext 
* Seperate data from source control 
* Store parameters in hierarchies 
* Track versions 
* Set TTL to expire values such as passwords 

h5. Types of Parameter Store
* String
** Strings are any block of text such as Hello World, test, or wow this is a great blog post.
* StringList
** A StringList is a collection of strings separated by a comma.
* SecureString
** used for sensitive data like passwords and API Keys.
* Subtype – AMI Datatype
** When using a string attribute, you can use an additional parameter --data-type and then specify an Amazon machine image resource number.

h1. Cost Strategies 
 

h1. Service constrains 

h5. Standard Parameters
* Free
* Max of 10,000 parameters (per region)
* 4KB max size 

h5. Advanced Parameters
* Paid
* Max of 100,000 parameters (per region)
* 8KB max size
* Supports parameter policies

h5. Intelligent Tiering
* When you select intelligent tiering, the parameter store will inspect each parameter to see if requires advanced features.

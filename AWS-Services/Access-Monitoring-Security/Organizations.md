h1. Description 

AWS Organizations removes the need for a developer to code scripts that allow individual or groups of accounts to communicate when workloads are divided across multiple AWS accounts.

h1. Main Features 
 
h5. General
* Allow to creat group of account and then apply policies to those groups.
* Allow to enable a single payment method for all the AWS account through consolidated billing.
* Organization is a collection of AWS account that can be organize into hierachy.
* Master Account.
** Use to create the organization.
** Can create other accounts.
** Has the role of a payer account and is responssible for paying all charges.

h5. Best Practicesl : 
* Alawys enable multi-factor authentication on root account 
* Always use strong and complex password on root account 
* Paying account (root or master account) should be used for billing purposes only. Don't deploy ressources on the paying account. 
* Anable/Disable AWS services using Service Control Policies either on OU or on individual accounts. 

h1. Cost Strategies 

The service is free.

h1. Service constrains  

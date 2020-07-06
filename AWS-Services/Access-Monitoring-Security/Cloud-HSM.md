h1. Description 

I a dedicated physical machine that is seperate from all the other AWS hardware, and it is used to store encryption keys.

h1. Main Features 
 

h5. General : 
* Dedicated hardware security module (HSM) 
* You should have at least 2 CloudHSM devices, one in each AZ.
* Can be use to store :
** Filesystem encryption keys
** Database encryption keys
** Digital Rights Management (DRM) related keys
** S3 related encryption keys
* FIPS 140-2 Level 3 certified
* Manage your own keys 
* No access to the AWS-managed component. 
* Run with VPC in your account 
* Single tenant, dedicated hardware, multi-AZ cluster 
* Industry-standard APIs- no AWS API 
* PKCS#11 
* Java Cryptography Extensions (JCE) 
* MIcrosoft CryptoNG (CNG) 
* Keep your keys safe - irretrievable if lost.  

h1. Cost Strategies 

You pay an hourly fee for each HSM you launch until you terminate the HSM.

h1. Service constrains 

h5. General :
* A single CloudHSM Cluster can contain up to 28 HSMs, subject to account service limits.

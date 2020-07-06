h1. Description 

Amazon Route 53 is a DNS service designed to give businesses and developers an efficient way to connect users to Internet applications.

h1. Main Features 

h5. General :
* You can buy names directly with AWS
* It can take up to 3 days to register depending on the circumstances.
* The services can map domain to EC2 or S3.
* Route 53 can monitor the health of your web servers, application, and other resources.
* Integrate DNS Failover to re-rout traffic if there is an outage.
* Domain apex can be map to S3, CLoudFront or ELB.

h5. DNS Entry Types
* SOA (Start Of Autority) Record
** The name of the server that suplied the data for the zone.
** The administrator of the zone.
** The current version of the data file.
** The default number of seconds for the time-to-live file on resource records.
* NS (Name Server) Records
** Alias of the name server
* A (Address) Records
** Used for translating the name of the domain to an IP.
* CName
** Alias of a domaine Name
* Alias Records
* MX Records
** Use for e-mail
* PTR Records
** Reverse fo an A records

h5. TTL :
* The lenght that a DNS record is cached on the Resolving server or the local PC.

h5. Routing Poilicies
* Simple Routing
** You can only have one records with multiple addresses.
** If you specify multiple values in a record, Route53 returns all values to the user in a random order.
* Weighted Routing
** Make able to set 10% of the traffic go to US-EAST-1 and 90% to go to EU-WEST-1.
** Health Chacks
*	* You can set it on individual record sets
*	* If a record set fails a health check it will be removed from Route53 until it passes the health check.
** You can set SNS notifications to alert you if a health check is failed.
* Latency-based Routing
** Route the traffic based on the lowest latency.
** You have to to create a latency resource record set for the EC2 or ELB rousource in each region that hosts your website.
* Failover Routing
** If  an EC2 or ELB at an endpoint is broken it will automatically re-route the traffic to an other one pre-defined domain.
* Geolocation Routing
** Choose where your traffic will be sent based on the geographic location of your user.
* Geoproximity Routing (Traffic Flow Only)
** You must use Route53 Traffic Flow.
** Allow to route traffic based on geograffik loccation and resources.
* Multivalue Answer Routing
** Allow to put health check on each records set.

h1. Cost Strategies 

h5. General :
* you only pay for the resources you use.
* DNS zones
** $0.50 per hosted DNS zone / month
* Policy records
** $50 per DNS name
* Standard queries
** $0.4 per million queries for the first billion queries / month, thereafter $0.2 per million queries / month
* Latency-based routing queries
** $0.6 per million queries for the first billion queries / month, thereafter $0.3 per million queries / month
* Geo-based queries
** $0.7 per million queries for the first billion queries / month, thereafter $0.35 per million queries / month
* Health checks
** first 50 AWS endpoints free, thereafter $0.5 / endpoint / month
* Domain registration
** https://d32ze2gidvkk54.cloudfront.net/Amazon_Route_53_Domain_Registration_Pricing_20140731.pdf

h1. Service constrains 

h5. General :
* Not available over VPN or direct connect.
* No forwarding or conditional forwarding for domain used on an on-promise network.
* Does not support privat zone transfers.

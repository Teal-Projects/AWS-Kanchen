# Description 

A web application firewall, that let you monitor the HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Application Load Balancer or API Gateway.

# Main Features 

### General :
* It's a proxy , firewall layer 7
* Also lets you control access to your content
* You use a web access control list (ACL) to protect a set of AWS resources. You create a web ACL and define its protection strategy by adding rules.
* Each rule contains a statement that defines the inspection criteria, and an action to take if a web request meets the criteria.
* You can use rules individually or in reusable rule groups.

### 3 different behavior :
* Allow all requests except the ones you specify
* Block all requests except the ones you specify
* Count the requests that match the properties you specify

### Condition of web requests characteristics:
* IP addresses that requests originate from
* Country that requests originate from
* Values in request headers.
* String or regex in request
* Length of requests
* Presence of SQL code (SQL injection).
* Presence of script (cross-site scripting).

# Cost Strategies 

### General : 
* You pay only for the rules you use and only as the traffic occurs. 
* No upfront fees or monthly charges, and no setup costs or configuration fees.  

# Service constrains 
 

h1. Description 

Amazon API Gateway is a managed service that allows developers to define the HTTP endpoints of a REST API or a WebSocket API and connect those endpoints with the corresponding backend business logic. It also handles authentication, access control, monitoring, and tracing of API requests.

h1. Main Features 

h5. General : 
* Expose HTTPS endpoints to define a RESTful API 
* Serverless-ly connect to services like Lambda & DynamoDB 
* Send each API endpoint to a different target 
* Run efficiently with low cost 
* Scale effortlessly and is low cost. 
* Track and control usage by API key 
* Throttle requests to prevent attacks 
* Connect to CloudWatch to log all requests for monitoring 
* Maintain multiple versions of your API. 
* You can enable API caching for reducing number of calls made to your endpoints and improve latency. 

h5. How to configure :  
* Define an API (container). 
* Define Resources and nested Resources (URL paths) 
* For each Reasource : 
** Select supported HTTP methods (verbs) 
** Set security 
** Choose target (such as EC2, Lambda, DynamoDB, etc...) 

h5. How to deploy it : 
* Deploy API to a stage: 
** Uses API Gateway domain, by default 
** Can use custom domain 

h5. Same Origin Policy : 
* Under the policy, a web browser permits scripts contained in a first web page to access data in a second web page, but only if both web pages have the same domain name. 
** This is don to prevent Cross-Site Scripting (XSS) attacks. 
*** Enforce by web browsers 
*** Ignored by tools like PostMan and curl 

h5. Cross-orgin resource sharing (CORS) : 
* Allows restricted resources (e.g. fonts) on a web page to be requested from another domain outside the domain from which the first resource was served. 
* In action : 
** Browser makes an HTTP OPTIONS call for a URL 
** Server returns a response : "These other domains are approved to GET this url" 
** Error "Origin policy connot be read at the remote resource" 
** You need to enable CORS on API Gateway. 

h1. Cost Strategies 

h5. REST API calls
* From $1.51/1M calls to $3.50/1M calls
h5. REST API caching
* From $0.02/hour to $3.80/hour based on the amount of caching memory
h5. WebSocker API messages
* From $0.80 to $1.00/1M messages
h5. WebSocket API connection minutes
* $0.25/1M connection minutes

h1. Service constrains 

h5. General :
* Add latency in your APIs

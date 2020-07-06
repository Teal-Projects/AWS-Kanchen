h1. Description 

Is a compute service where you can upload your code and create a lambda function. AWS Lambda takes care of provisioning and managing the servers that you use to run the code. You don't have to worry about aoperating systems, patching, scaling etc...

h1. Main Features 
 
h5. You can use lambda for : 
* As an event driven compute service where AWS Lambda runs your code in response to events. These events could be changes to data in an Amazon S3 bucket or an Amazon DynamoDB table. 
* As a compute service to run your code in response to HTTP requests using Amazon API Gateway or API calls made using AWS SDKs. This is what we use at A Cloud Guru. 

h5. Supported language 
* Node.js 
* Java 
* Python 
* Ruby 
* Ch1. 
* Go 
* PowerShell 
*	
h5. General : 
* NO SERVERS management 
* Continuous Scaling 
* Super super super cheap!  
 
h5. Synchronuouse Invokes : 
* In this model, your functions execute immediately when you perform the Lambda Invoke API call. 
* Will not retry the function if error. 
*  Can be trigger from : 
** ALB, Cognito, Lex, Alexa, API Gateway, CloudFront, and Kinesis Data Firehose 

h5. Asynchronuouse Invokes : 
* Functions are placed in a queue. When you invoke a function asynchronously, you don't wait for a response from the function code. You hand off the event to Lambda and Lambda handles the rest. 
* Will try a 2 time the function if there is an error.  
* Can be trigger from : 
** S3, SNS, SES, CloudFormation, CloudWatch, CodeCommit 

h5. Poll-Based invokes : 
* AWS will manage the poller on your behalf and perform Synchronous invokes of your function with this type of integration. 
* Will retry the function until data expiration. 
* Can be trigger from : 
** Kinesis, SQS, DynamoDB Stream 
 

h1. Cost Strategies 

h5. General:
* Number of request
** First 1 million are free and then 0.20$ per million request
* Duration
** From time your code

h1. Service constrains 
 
h5. General :
* Statefull DB services (s3, Redis...) is required to store persistant data.
* Limit of 1000 concurent executions for the whole AWS account.
* Function can not execute longer than 5min.
* Can not automaticall deploy a group of function.

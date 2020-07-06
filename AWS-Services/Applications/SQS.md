h1. Description 

Provides an HTTP API over which applications can submit items into and read items out of a queue. The queue itself is fully managed by AWS, which makes SQS an easy solution for passing messages between different parts of software systems that run in the cloud.

h1. Main Features 

h5. General : 
* Decouple the components of an application so they run independently 
* Retention period of up to 14 days. 
* Easing message management between components. 
* Any component can retrieve message by the Amazon SQS API. 
* Is pull-based. You have to have an EC2 instance that pull the content 
* visible time -out is the amount of time that the message is invisible in the SQS queue. 
* Long polling (To reduce the bill) :  Set ReceiveMessageWaitTimeSeconds to a number > 0. 
** doesn't return a response until a message arrives in the message queue.  

h5. Standard queu : 
* Default queue type. 
* Garenthee that a message is at least delivered once.  
* Best effor ordering. 

h5. FIFO queue : 
* Fisrt in First out delivery. 
* Maximum VisibilityTimeout is 12 hours 
* Exactly once processing. 
* Can not send mor than one message.  

h1. Cost Strategies 



h1. Service constrains 
 

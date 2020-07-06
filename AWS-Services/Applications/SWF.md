h1. Description 

AWS SWF(Amazon Simple Workflow) Service is made for developers which help to run, built, and scale background jobs.

h1. Main Features 
 
h5. General :
* Workflow executions can last up to 1 year.
* Present a task-oriented API
* Ensure that a task is assigned only once and is never duplicated.
* Keeps track of all the tasks and events in an application.
* When on the process, there is human actions, we need to use SWF.
* SWF does the following :
** Stores metadata about a workflow and its component parts.
** Stores task for workers and queues them until a Worker needs them.
** Assigns task to workers, which can run either on cloud or on-premises
** Routes information between executions of a workflow and the associated Workers.
** Tracks the progress of workers on Tasks, with configurable timeouts.
** Maintains workflow state in a durable fashion.

h5. Use case :
* Media processing
* Web application back-ends
* Business process workflows
* Analytics pipelines

SWF Actors: 
* Workflow Starters 
** An application that can initiate a workflow. Could be your e-commerce website following the placement of an order, or a mobile app searching for bus times. 
* Deciders 
** Control the flow of activity tasks in a workflow execution. If something has finished in a workflow, a Decider decides what to do next. 
* Activity Workers 
** Carry out the activity tasks 

h1. Cost Strategies

h1. Service constrains 
 

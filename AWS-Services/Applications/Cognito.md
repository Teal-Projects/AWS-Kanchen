h1. Description 

This service allows users to log in directly with their user credentials that are maintained in Amazon Cognito on behalf of of your web and mobile applications. It also allows sign-in through a third party social networking application such as Facebook, Amazon, Google or Apple, and other Identity providers.

h1. Main Features 
 
h5. General :  
* Act as an Identity Broker between your application and Web ID providers, so you don't need to write any additional code. 
* User pool and identity pool are two main components in Amazon Cognito.
* Flexible enough to allow usage of user pools and identity pools separately. They can be used together as well.
	
h5. User pools:
* This component takes care of providing authentication to users who sign in through your web or mobile application.
* used as user directories to store user’s personal data such as login id,  password, etc.
* It handle things like user registration, authentication, and account recovery. 

h5. Identity pools :
* Help to create identities for users and assign permissions for them using IAM roles. Using the Identity pool, users can get access to other AWS services based on their identity information.
* Can include :
** Users from Amazon Cognito user pool
** Users from who can authenticate from external identity providers such as Facebook and Google
** Users authenticated from user own authentication process
* Grant temporary default access to guest users who are not authenticated

h1. Cost Strategies 

https://aws.amazon.com/cognito/pricing/

h1. Service constrains 
 
h5. General :
* Confirmation emails (after user registration) are very limited. You need to create custom HTML email templates if you want more than just a plain text email with a verification link.
* There are no error messages for specific form fields, only general error messages.

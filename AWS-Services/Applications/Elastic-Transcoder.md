h1. Description 

Elastic Transcoder is an aws service used to convert the media files stored in an S3 bucket into the media files in different formats supported by different devices.

h1. Main Features 
 
h5. General :  
* Media Transcoder in the cloud 
* Convert media files from their original source format in to different formats that will play on smartphones, tablets, PCs. 
* Provides transcoding presets for popular output formats. No need to guess guessthe best settings for a particular device. 
* Pay based on the minutes that you transcode and the resolution at which you transcode. 

h5. Components :
* Jobs
** Have the task to complete the work of transcoding. Each job can convert a file up to 30 formats.
* Pipelines
** Queues that consist of your transcoding jobs. When you create a job, then you need to specify which pipeline you want to add your job.
* Presets
** Templates that contain the settings for transcoding the media file from one format to another format.
* Notifications
** Optional field which you can configure with the Elastic Transcoder. Notification Service is a service that keeps you updated with the status of your job

h5. Use case
* Suppose I uploaded the mp4 file in S3 bucket. 
* As soon as uploading is completed, it triggers a Lambda function. 
* Lambda function will then invoke Elastic Transcoder. 
* Elastic Transcoder converts the mp4 file into different formats so that the file can be opened in iphone, Laptop, etc. 
* Once it has completed the transcoding, it stores the transcoded files in S3 bucket.

h1. Cost Strategies 
 
https://aws.amazon.com/elastictranscoder/pricing/

h1. Service constrains 
 

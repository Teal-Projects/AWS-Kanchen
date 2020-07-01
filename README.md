## TODO
1. `OK` Setup aws-cli and aws-vault for runing terraform command with an MFA request token.
1. `OK` Automate the process of terraform init, plan and apply.
1. `~`  Configure pre-commit for terraform static analyse with fmt (need to add tflint).
1. `OK` Create S3 bucket to save terraform state.
1. `OK` Lock the terraform state with DynamoDB.
1. `::` Setup one Terraform-state per Environment (dev,stage,prod).
1. `::` With git hooks send notification to Mattermost channel (infra-terraform-test) alerting about new "terraform apply status", "Merging branch request about a change in terraform state", 
1. `::` Create a pre-commit for auto-tagging terraform module version.
1. `::` Create a Terraform module for accessing to the registry Harbor. 
1. `::` Create a Terraform module for sending monitoring alert (compute & storage) to an alert system like graphana or other.
## Setup

1. Install Terraform
1. Install Packer
1. Set up AWS credentials (see below)

### Installing Terraform

Install Terraform version 0.12. Do not use 0.13. (yet)

[Download Terraform 0.12](https://releases.hashicorp.com/terraform/), and store the executable somewhere in the `$PATH`. (I recommend sticking it in `/usr/local/bin`.)

### Installing Packer 

Install Packer version 1.6.0

[Download Packer 1.6.0](https://releases.hashicorp.com/packer), and store the executable somewhere in the `$PATH`. (I recommend sticking it in `/usr/local/bin`.)

### Setting up AWS credentials

We recommend using [aws-vault](https://github.com/99designs/aws-vault/releases/tag/v5.4.4), as it provides a secure way to store AWS credentials locally.

1.  Install aws-vault
		See "aws-vault_install.sh" script.	
1.  Install the AWS command-line tools 
		See "aws-cli_install.sh" script.

1.  Log in to the [AWS console](https://signin.aws.amazon.com/console).
	
1.  Navigate to the IAM service, then to the User section in the sidebar. In there, find your own username and click on it. In the page that opens, click on the _Security credentials_ tab.

1.  On that page, create an access key. Take note of the access key ID and the secret access key.

1.  On that page, assign a MFA device, if none is assigned yet. To do so, click on _Manage_ next to the “Assigned MFA device: none”, and follow the process. Log out and back in again.

1.  Remove `~/.aws/credentials`

1.  Create (or replace) `~/.aws/config` :
	
	For authentication with Virtual mfa
	```
    [profile main]
    region = eu-central-1
    mfa_serial = arn:aws:iam::XXXXXXXXXX:mfa/kanchen@mail.com
    ```
	
    Be sure to use the proper MFA serial, which you can find in the AWS console → Users → (your user) → Security credentials tab → Assigned MFA device field.

1.  Add credentials: `aws-vault add main`. Enter the access key ID and secret access key obtained earlier.

1.  Test it out (part 1): `aws-vault exec main -- echo ok`. It will likely ask for a token; if so, enter an MFA token. This should print out `ok`.

1.  Test it out (part 2): `aws-vault exec main -- env | grep AWS`.  This should print out a bunch of AWS environment variables that give access to AWS.

1.  Test it out (part 3): `aws-vault exec main -- aws s3 ls`. This should print out all S3 buckets.

#### If you already have a vault

In case you already have an aws-vault you can configure which one te «bin/aws-env» will use by setting the env var:

```
# ~/.bashrc
export AWS_NEO_VAULT="domain"
```

```
# ~/.aws/config
[profile domain]
region = eu-central-1
mfa_serial = arn:aws:iam::XXXXXXXXXX:mfa/kanchen@mail.com
```

### Setting up Terraform

If you have not yet done so, clone this repository.

`cd` into your cloned working copy of this repository.

Create a file `terraform.tfvars`. This file contains your personal details, and is in `.gitignore` so that it won’t be committed to the repository. Add the following to this file:

```
ssh_username = "changeme"
ssh_public_key = "ssh-rsa AAAAB3Nzsomethingsomething"
```

Replace the value:

* For `ssh_username`, use the username you use for SSHing (usually first and last name joined by a dot).

* For `ssh_public_key`, use your public key (usually in ~/.ssh/id_rsa.pub)

Run `make`. This should print something along the lines of this:

> No changes. Infrastructure is up to date.

## Making changes

1. Check out `master`.

1. Ensure that you have no pending changes locally. If you do, [stash them] for now.

1. Ensure that your working copy is up to date: `git pull`

1. Write your code, using `make` to verify it as you go.

1. Apply your changes using `make apply`. This will show the changes that are about to be applied, and ask for confirmation. **Make sure that the proposed set of changes does not contain anything unexpected.**

1. `git commit` changes to all files.

1. `git push`.

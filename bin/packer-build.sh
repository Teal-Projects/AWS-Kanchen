#!/bin/bash 

#==================================================================
#
# Script Name	:                                                                                              
# Description	:                                                                                 
# Args          :                                                                                           
# Author       	: kanchen Monnin (kanchen.monnin@neofonie.de)                                             
#
#==================================================================

#!/bin/bash
    # this set line is important so that jenkins will mark the build as "failed" appropriately
    set -euo pipefail

    # for the cascading images we'll need to reference which AMI to use as a starting point
    function amilookup {
        aws-vault_env aws ec2 describe-images --filters Name=tag-key,Values=Name Name=tag-value,Values=$1 --region us-west-2 --query Images[*].[ImageId,CreationDate] --output text | sort -k 2 | tail -1 | cut -f 1
    }

    # we need to find the most recent amazon linux image - this requires some 'aws ec2' magic
    function amazon_linux_amilookup {
        aws-vault_env aws ec2 describe-images --owners amazon --filters "Name=root-device-type,Values=ebs " "Name=virtualization-type,Values=hvm" --region us-west-2 --query Images[*].[ImageId,CreationDate,Name] --output text | grep "amzn-ami-hvm.*x86_64-gp2" | sort -k 2 | tail -1 | cut -f 1
    }

    # for use with inspec
    export image_name="$1"

    export AMI_AMAZON_LINUX="$(amazon_linux_amilookup)"
    export AMI_BASE=$(amilookup base)
    export AMI_SECONDARY=$(amilookup secondary)

    cd $1

    # making an assumption that if you are ec2-user that we are on
    # an ec2 instance and the packer command should be in your path.
    if [[ $USER = "ec2-user" ]] ; then
      packercmd=packer
    else
      packercmd=~/bin/packer
    fi
    command -v $packercmd >/dev/null 2>&1 || { echo >&2 "I require packer but it's not installed.  Aborting."; exit 1; }

    # finally the magic is happening... notice the pipe to tee, that's important for InSpec

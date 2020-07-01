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
    if [[ -z ${image_name} ]] ; then echo "'image_name' not set, exiting" ; exit 1 ; fi

    echo "preparing inspec environment"
    docker pull chef/inspec
    inspec () {
      docker run --rm -v $(pwd)/../inspec_files/:/share:Z chef/inspec $1
    }

    # get ip address of instance, then we can use the private key in this directory
    # and run inspec against the instance
    instanceIP=$(aws --region us-west-2 ec2 describe-instances --output text --instance-id=$(awk -F[\(\)] '/Waiting for instance/{print $2}' ../${image_name}/build.log) --query "Reservations[*].Instances[*].PrivateIpAddress")
    if [[ -n "$instanceIP" ]] ; then
      echo "Running inspec tests:"
      inspec "exec ${image_name}.rb -i packer_builder_rsa --sudo -t ssh://ec2-user@${instanceIP}"
      if [[ $? -ne "0" ]] ; then exit 1 ; fi
    else
      echo "Unable to determine instance IP - exiting!"
      exit 1
    fi
    if [[ -f ../${image_name}/build.log ]] ; then rm ../${image_name}/build.log ; fi

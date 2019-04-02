#!/bin/bash

aws_ec2_stop () {
    echo "aws ec2 stop-instances --instance-ids <instance_ID>"
}
TIME=$(date +%H:%M)
echo $TIME

if [[ "$TIME" > "12:30" ]]; then
    echo "Time has passed, Server is NOT shutting down"
else 
    aws_ec2_stop
fi

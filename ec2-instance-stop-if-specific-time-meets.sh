#!/bin/bash
#================================================================
# EC2-Instance-Sto-If-Specific-Time-Meets
#================================================================
# Script has been developed to stop EC2 instance once it's not closed to specific time.
# If the time greater than specified time, Server is NOT stopping.
# If time is NOT greater than specified time, Server will be stopped
#
#================================================================
# IMPLEMENTATION
#    version         v0.0.1
#    author          Madura Dissanayake
#================================================================

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

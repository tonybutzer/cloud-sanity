# /bin/bash
#   -- renames an instance tag to deleted; so we can restart another new instancve with the same name without ambiguity
#   -- even though it takes AWS a while to actually remove the old instance

NAME='butzer-lpip-odcm1'


aws ec2 describe-instances --filters "Name=tag:Name,Values=${NAME}" --query 'Reservations[].Instances[].[ [Tags[?Key==`Name`].Value][0][0],PublicIpAddress, PrivateIpAddress, InstanceId, InstanceType, Placement.AvailabilityZone]'

aws ec2 describe-instances --query 'Reservations[].Instances[].[ [Tags[?Key==`Name`].Value][0][0],InstanceId, InstanceType ]'

aws ec2 describe-instances --filters "Name=tag:Name,Values=${NAME}" --query 'Reservations[].Instances[].[ [Tags[?Key==`Name`].Value][0][0],InstanceId ]'

awsid=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${NAME}" --query 'Reservations[].Instances[0].InstanceId'`

# echo $awsid | sed -e 's/\]//g;s/\[//g;s/ //g'
awsid=`echo $awsid | sed -e 's/\]//g;s/\[//g;s/[" ]//g'`

echo $awsid

aws ec2 create-tags --resources $awsid --tag "Key=Name,Value=doubledefunct"

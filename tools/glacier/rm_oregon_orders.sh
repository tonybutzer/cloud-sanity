#! /bin/bash

echo archive oregon orders

bucket=ga-odc-eros-ard-west
archive=s3://ga-odc-eros-archive-west/archive/espa/hayden/tar/

while read -r line; do \
   # echo $line;\
   order=$(echo $line | cut -d ' ' -f4)
   echo $order;\
   # aws s3 rm --recur --dryrun s3://${bucket}/${order}
   aws s3 rm --recur s3://${bucket}/${order}
done < oregon_orders.list

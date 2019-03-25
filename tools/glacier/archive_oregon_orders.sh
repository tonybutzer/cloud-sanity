#! /bin/bash

echo archive oregon orders

bucket=ga-odc-eros-ard-west
archive=s3://ga-odc-eros-archive-west/archive/espa/hayden/tar/

while read -r line; do \
   # echo $line;\
   order=$(echo $line | cut -d ' ' -f4)
   echo $order;\
   aws s3 sync s3://${bucket}/${order} ${archive}
done < oregon_orders.list

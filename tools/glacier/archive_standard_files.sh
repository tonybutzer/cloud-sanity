#! /bin/bash

echo archive oregon orders

bucket=ga-odc-eros-ard-west
archive=s3://ga-odc-eros-archive-west/archive/espa/tar

while read -r line; do \
   # echo $line;\
   order=$(echo $line | cut -d ' ' -f4)
   path=$(echo $line | cut -d ' ' -f1)
   row=$(echo $line | cut -d ' ' -f2)
   sensor=$(echo $line | cut -d ' ' -f3)
   aws s3 sync s3://${bucket}/${order} ${archive}/${path}/${row}/${sensor}
done < files_to_move_to_glacier.txt

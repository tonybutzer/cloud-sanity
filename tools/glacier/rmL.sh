#! /bin/bash

echo rm L files

bucket=ga-odc-eros-archive-west

while read -r line; do \
   # echo $line;\
   filename=$(echo $line | cut -d ' ' -f4)
   echo $filename;\
   aws s3 rm s3://${bucket}/archive/${filename}
   echo ""
done < rmlist.txt

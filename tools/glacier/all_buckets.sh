#! /bin/bash

echo HI

#for b in ga-odc-eros-archive-west ga-odc-eros-ard-west; \
for b in ga-odc-eros-archive-west ; \
do echo $b; python3 bucket_analyze.py $b "" ; done


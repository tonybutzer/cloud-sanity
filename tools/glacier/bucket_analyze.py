import sys
import boto3

import logging


my_level = logging.INFO
logging.basicConfig(stream=sys.stdout, level=my_level,
                    format='%(levelname)s,%(name)s,%(asctime)s,%(message)s,')


arg_names = ['command', 'bucket', 'prefix']
args = dict(zip(arg_names, sys.argv))


print("bucket", args['bucket'])
print("prefix", args['prefix'])



bucket_name = args['bucket']
prefix = args['prefix']



s3 = boto3.resource('s3')
bucket = s3.Bucket(bucket_name)
logging.debug("Bucket : %s", bucket_name)
logging.debug("Prefix : %s", prefix)
cnt=0
storage_class_h = {'STANDARD' : 0,
                   'GLACIER' : 0,
                  }
sum_class_h = {'STANDARD' : 0,
                   'GLACIER' : 0,
                  }
sum = 0
for obj in bucket.objects.filter(Prefix=prefix):
    # print(dir(obj))
    # print(obj.key, obj.storage_class)
    storage_class_h[obj.storage_class] = storage_class_h[obj.storage_class] + 1
    cnt = cnt + 1
    sum = sum + obj.size
    sum_class_h[obj.storage_class] = sum_class_h[obj.storage_class] + obj.size

print ("COUNT=", cnt)
for ky in storage_class_h.keys():
    print(ky, storage_class_h[ky])
    sum = sum_class_h[ky]
    print(ky, sum_class_h[ky])
    gig = sum/(1024*1024*1024)
    print (ky, "GBYTES=", gig)
    if ky == 'GLACIER': 
        cost=.007
    else: 
        cost=.023
    print (ky, "Cost/Month=", gig * cost)
    print ("----" * 25)
        
                                                   


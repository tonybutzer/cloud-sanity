# Glacier

> Saving money by moving stale objects into glacier

## Cost

.030/GB in s3 - first terabyte - what then cheaper or more expensive?
.007/GB in glacier

```
ubuntu@ip-172-31-34-129:~$ aws glacier list-vaults --account-id -

An error occurred (AccessDeniedException) when calling the ListVaults operation: User: arn:aws:sts::471850042218:assumed-role/tonyEC2/i-0322ecef59855c34f is not authorized to perform: glacier:ListVaults on resource: arn:aws:glacier:us-west-2:471850042218:vaults/
```

```
[tony@bastion ~]$ aws glacier list-vaults --account-id -
{
    "VaultList": []
}
```


## Access

1. What is in the buckets?
2. Can I remove any buckets?
3. Document the process for glacier migration
4. how do I tell what is in glacier and what is in s3 - ready for access?
5. how to retrieve data


## Migrate

1. Old US/ARD Data
2. Hayden ISland  ESPA
3. non-cog tarballs over vietnam


## How?
1. bucket accessment software
	- how much space does it use?
	- what does it cost in S3?
	- what will it cost in Glacier?
	
2. bucket migration software
	- from bucket equals src
	- to bucket = ga-odc-eros-archive-west/archive/usard, espa, l1

## WBS

### clean up buckets


####	s3://ga-odc-eros-pds-west/


```
 aws s3 ls ga-odc-eros-pds-west/ --summa --recur --human


objects: 279
   Total Size: 35.6 GiB


```
	- aws s3 rm s3://ga-odc-eros-pds-west/ --recur --dryrun
	- aws s3 rm s3://ga-odc-eros-pds-west/ --recur 

> This command deletes all objects first and then deletes the bucket.

   - aws s3 rb s3://ga-odc-eros-pds-west --force  


####	ga-odc-eros-lvl1-west

```
aws s3 rb s3://ga-odc-eros-lvl1-west --force
```

####	ga-odc-eros-l1til-west

- Total Objects: 28176
-  Total Size: 191.4 GiB

1. contains tiled usard over hayden island - archive for now - practice recovery

2. aws s3 rb s3://ga-odc-eros-l1til-west --force

### tbd


import sys
import logging
import boto3

class pathrow:
    """ The pathrow class parses an archive name and returns the components """

    def __init__(self, file_object):
    
        parts = file_object.split("/")
        self.path = parts[3]
        self.row = parts[4]


class Ice:
    """ The Ice class deals with glacier and standard s3 buckets and 
        helps manage the contents of each path row
    """
    def __init__(self):
        """ initialize instance variables/properties """
        self.archive_bucket = "ga-odc-eros-archive-west"
        self.working_bucket = "ga-odc-eros-ard-west"
        self.archive_prefix = "archive/espa/tar"

    def return_archive_file_list(self):
        """ returns a file list of s3/glacier objects in the archive """
        s3 = boto3.resource('s3')
        bucket_name = self.archive_bucket
        bucket = s3.Bucket(bucket_name)
        logging.debug("Bucket : %s", bucket_name)
        prefix = self.archive_prefix
        logging.debug("Prefix : %s", prefix)
        file_list = []
        for obj in bucket.objects.filter(Prefix=prefix):
            if obj.key.endswith('.gz'):
                obj_key = obj.key
                file_list.append(obj_key)
        return file_list


    def return_archive_path_row_dict(self):
        """ returns a summary of the path rows for the archive """
        pr_dict = {}
        fl = self.return_archive_file_list()
        for file_object in fl:
            pr = pathrow(file_object)
            # print(pr.path, pr.row)
            key = pr.path + pr.row
            if key in pr_dict.keys():
                pr_dict[key] = pr_dict[key] + 1
            else:
                pr_dict[key] = 1

        return(pr_dict)


    def return_working_order_list(self):
        """ returns orders in stantaard s3 candidates for acrhival """

        prefix = ""

        order_list = []

        print (' scene list initializing ...')
        s3 = boto3.resource('s3')
        bucket_name = self.working_bucket
        bucket = s3.Bucket(bucket_name)
        logging.debug("Bucket : %s", bucket_name)
        logging.debug("Prefix : %s", prefix)

        result = bucket.meta.client.list_objects(Bucket=bucket.name,
                                         Delimiter='/')
        for o in result.get('CommonPrefixes'):
            top_dir_item = o.get('Prefix')
            if top_dir_item.startswith('espa-'):
                # print(top_dir_item)
                order_list.append(top_dir_item)

        return(order_list)


    def return_aws_list(self, order):
        aws_list = []
        s3 = boto3.resource('s3')
        bucket_name = self.working_bucket
        bucket = s3.Bucket(bucket_name)
        logging.debug("Bucket : %s", bucket_name)
        prefix = order
        logging.debug("Prefix : %s", prefix)
        for obj in bucket.objects.filter(Prefix=prefix):
            if obj.key.endswith('.gz'):
                obj_key = obj.key
                # the_url = self.host + "/orders/" + obj_key
                aws_list.append((obj_key, obj.size))
        return aws_list


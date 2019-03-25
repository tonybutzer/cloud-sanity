from iceLib.iceapy import Ice
from dogLib import Tarball
from dogLib import Sceneid


print ("hello")

ice = Ice()

# fl = ice.return_archived_file_list()

# for f in fl:
    # print(f)

p_dict = ice.return_archive_path_row_dict()

for ky in p_dict.keys():
    print(ky, p_dict[ky])

o_list = ice.return_working_order_list()
for o in o_list:
    # print(o)
    a_list = ice.return_aws_list(o)
    #for a in a_list:
        #print(a)
    tar_f = a_list[0][0]
    tb = Tarball(tar_f)
    sid = Sceneid(tb.filename)
    # if True: # ALL Orders
        # print(sid.path, sid.row, sid.sensor, o, "AWS:", len(a_list))
    key1 = sid.path + sid.row
    if key1 in p_dict.keys():
       print (key1,o, " is already in GLACIER!")
       cmd = "aws s3 rm --recursive s3://ga-odc-eros-ard-west/" + o
       print(cmd)
    else:
       print (key1,o, " NEEDS to be in GLACIER!")
   


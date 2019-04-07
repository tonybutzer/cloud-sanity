# Run cube in a box
1. Read Alex's docs - run the make file in order
2. source the .aws SourceMe
3. make download-pathrows-file
3. make up
3. make initdb
4. make index
5. runs on port 80; make sure the security-group (firewall) allows the access 

1. clone the repo
	- cd ~/opt; git clone https://github.com/opendatacube/cube-in-a-box.git
2. start up cube
	- sudo bash; make up
	- if this is teh first time it takes a while to build; play pool
	- runs jupyter_1 and postgres_1 as services
3. verify its running
	- maps 8888-->80 by default
	- so  netstat -anl |grep 80
	- secretpassword
3. where are notebooks and how are they linked?
4. run Basic_functionality
	- oops: FileNotFoundError: [Errno 2] No such file or directory: '/opt/odc/data/configIndex.txt'
5. read the docs; examine the docker-compose files

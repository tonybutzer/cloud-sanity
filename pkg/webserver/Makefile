sparse:
	rm -fr odc-lcmap
	./sparse_checkout.sh

webServer:
	-killall python
	(cd odc-lcmap/eng/docs/build/html; nohup python -m SimpleHTTPServer &)

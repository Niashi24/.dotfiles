#remove any output from the makefile
.SILENT:
#"linux" target (default)
linux: clean
	#runs the linux.sh script
	./bin/linux.sh
#"clean" target
clean:
	#runs the cleanup.sh script
	./bin/cleanup.sh

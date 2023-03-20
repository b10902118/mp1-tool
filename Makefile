run:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 /bin/bash -c "cd /home/os_mp1/xv6&&exec bash"
grade:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 grade
qemu:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 qemu 
debug:
	docker run --rm -it -p 26000:26000 -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 qemu-gdb 

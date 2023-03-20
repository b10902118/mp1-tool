run:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 /bin/bash -c "cd /home/os_mp1/xv6&&exec bash"
grade:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 grade
qemu:
	docker run --rm -it -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 qemu 
debug:
	docker run --rm -it -p 26000:26000 -v $(shell pwd)/xv6:/home/os_mp1/xv6 ntuos/mp1 make -C /home/os_mp1/xv6 qemu-gdb 
compile:
	docker run --rm -v $(shell pwd):/home/os_mp1/xv6 ntuos/mp1 /bin/sh -c "cd os_mp1/xv6 && riscv64-linux-gnu-gcc -Wall -Werror -O -fno-omit-frame-pointer -ggdb -MD -mcmodel=medany -ffreestanding -fno-common -nostdlib -mno-relax -I. -fno-stack-protector -fno-pie -no-pie   -c -o user/threads.o user/threads.c" 
#&& riscv64-linux-gnu-ld -z max-page-size=4096 -N -e main -Ttext 0 -o user/_threads user/threads.o user/ulib.o user/usys.o user/printf.o user/umalloc.o user/setjmp.o"

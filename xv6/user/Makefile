all:
	docker run --rm -v /home/bill/os/mp1/xv6:/home/os_mp1/xv6 ntuos/mp1 /bin/sh -c "cd os_mp1/xv6 && riscv64-linux-gnu-gcc -Wall -Werror -O -fno-omit-frame-pointer -ggdb -MD -mcmodel=medany -ffreestanding -fno-common -nostdlib -mno-relax -I. -fno-stack-protector -fno-pie -no-pie   -c -o user/threads.o user/threads.c" 
#&& riscv64-linux-gnu-ld -z max-page-size=4096 -N -e main -Ttext 0 -o user/_threads user/threads.o user/ulib.o user/usys.o user/printf.o user/umalloc.o user/setjmp.o"

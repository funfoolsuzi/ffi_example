.PHONY: build rm

KERNEL_NAME := $(shell uname)

build: program

rm:
	rm greet.o program.o program

program: greet.o program.o
	if [ $(KERNEL_NAME) = Linux ]; then \
		ld -o program -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc program.o greet.o; \
	elif [ $(KERNEL_NAME) = Darwin ]; then \
		ld -arch x86_64 -lSystem greet.o program.o -o program; \
	fi

greet.o:
	cc -c greet.c

program.o:
	if [ $(KERNEL_NAME) = Linux ]; then \
		as -o program.o program_linux.s; \
	elif [ $(KERNEL_NAME) = Darwin ]; then \
		as -o program.o program_darwin.s; \
	fi

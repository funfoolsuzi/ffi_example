.PHONY: build rm

build: program

rm:
	rm greet.o program.o program

program: greet.o program.o
	ld -arch x86_64 -lSystem greet.o program.o -o program

greet.o:
	cc -c greet.c

program.o:
	as -o program.o program.s
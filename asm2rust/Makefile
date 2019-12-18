.PHONY: build rm rustasm

build: program

rm:
	rm greet.o program.o program

program: greet.o program.o
	ld -e _start -arch x86_64 -lSystem greet.o program.o -o program

greet.o:
	rm -rf targeet/releasee/deps
	cargo rustc --release -- --emit obj
	cp `find target/release/deps -name "asm2rust-*.o"` greet.o

program.o:
	as -o program.o program.asm

rustasm:
	cargo rustc --release -- --emit asm
	cp `find target/release/deps -name "asm2rust-*.s"` greet.asm
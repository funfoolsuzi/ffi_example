.PHONY: build rm rustasm

build: program

rm:
	rm greet.o program.o program

program: greet.o program.o
	if [ "$(uname)"==Linux ]; then \
		ld -o program -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc greet.o program.o; \
	elif [ "$(uname)"==Darwin ]; then \
		ld -e _start -arch x86_64 -lSystem greet.o program.o -o program; \
	fi

greet.o:
	rm -rf targeet/releasee/deps
	cargo rustc --release -- --emit obj
	cp `find target/release/deps -name "asm2rust-*.o"` greet.o

program.o:
	if [ "$(uname)"==Linux ]; then \
		as -o program.o program_linux.s; \
	elif [ "$(uname)"==Darwin ]; then \
		as -o program.o program_darwin.s; \
	fi

rustasm:
	cargo rustc --release -- --emit asm
	cp `find target/release/deps -name "asm2rust-*.s"` greet.asm
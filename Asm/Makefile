all: hello.o
  ld hello.o -o hello

hello.o: hello.asm
  nasm -f64 hello.asm -o hello.o

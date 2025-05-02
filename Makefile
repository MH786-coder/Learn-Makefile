#We make the files togeather in this part
say: hello.o main.o
	@gcc main.o hello.o -o say
	@echo "compiled"

install: main.c hello.c
	@gcc -c main.c -o main.o
	@gcc -c hello.c -o hello.o

clean: main.o hello.o say
	@rm main.o hello.o 
	@rm say
	@echo "removed"
CC=gcc

exam: main.c
	$(CC) -o exam main.c -I /*.h

clean:
	rm exam

CC=gcc

exam: main.c
	$(CC) -o exam main.c

clean:
	rm exam

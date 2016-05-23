CC=gcc
include=funcs.c ref_input.c

exam: main.c
	$(CC) -o exam main.c $(include)

clean:
	rm exam

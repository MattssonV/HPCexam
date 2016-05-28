CC=gcc
include=funcs.c ref_input.c

exam: main.c
	$(CC) -Wextra -Wall -g -o exam main.c $(include)  -ftree-vectorizer-verbose=2

clean:
	rm exam
	rm -rf exam.dSYM/

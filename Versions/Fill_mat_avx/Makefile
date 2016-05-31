CC=gcc
include=funcs.c ref_input.c

exam: main.c
	$(CC) -O2 -mavx -S main.c $(include)
	$(CC) -mavx  -Wextra -Wall -c main.c $(include)
	$(CC) -Wextra -Wall -mavx -g -o exam main.c $(include) -O2
	$(CC) -Wextra -Wall -S main.c -fverbose-asm
clean:
	rm exam
	rm *.o
	rm *.s
	rm -rf exam.dSYM/

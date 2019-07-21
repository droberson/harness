all:
	gcc -o fexecve-from-stdin fexecve-from-stdin.c
	gcc -o fexecve-from-url fexecve-from-url.c -lcurl
clean:
	rm -f fexecve-from-stdin fexecve-from-url *.o core *~


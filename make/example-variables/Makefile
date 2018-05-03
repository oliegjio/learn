CC=g++ # Declare the variable.

CFLAGS=-c -Wall # Declare the variable.

all: hello

hello: main.o function1.o function2.o
	$(CC) main.o function1.o function2.o -o hello # Use variable.

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp # Use variables.

function1.o: function1.cpp
	$(CC) $(CFLAGS) function1.cpp

function2.o: function2.cpp
	$(CC) $(CFLAGS) function2.cpp

clean:
	rm *.o

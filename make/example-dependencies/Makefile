# <target>: <dependency1> <dependency2> <...>
#     <command1>
#     <command2>
#     <........>

all: hello # Build target `all` depends on `hello` build target.

# Build target `hello` depends on build targets: `main.o`, `function1.o` and `function2.o`. This build target will be executed after all dependencies are executed.
hello: main.o function1.o function2.o
	g++ main.o function1.o function2.o -o hello # Command.

# There `main.cpp` file is the dependency for `main.o` build target. If this file exists - run this target.
main.o: main.cpp # Dependency: `main.cpp`.
	g++ -c main.cpp # If exists, run this command. Compile `main.cpp` file and produce `.o` file.

function1.o: function1.cpp
	g++ -c function1.cpp

function2.o: function2.cpp
	g++ -c function2.cpp

# On `make clean` remove all `*.o` files.
clean: # Build target `clean`.
	rm *.o # Command.

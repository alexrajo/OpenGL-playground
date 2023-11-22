CC = g++ # Compiler (g++ for C++)
CFLAGS = -Wall -g
COMPILEFLAGS = -Iinclude
LINKFLAGS = -Llib -lsfml-graphics -lsfml-window -lsfml-system -lopengl32 # Used to link libraries to the executable

main: main.o
	$(CC) build/main.o $(CFLAGS) $(LINKFLAGS) -o bin/main

main.o: src/main.cpp
	$(CC) $(CFLAGS) $(COMPILEFLAGS) -c src/main.cpp -o build/main.o

clean:
	del /Q build\*.o bin\main.exe

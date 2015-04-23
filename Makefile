# cs335 lab1
# to compile your project, type make and press enter
CFLAGS = -I ./include
LIB    = ./lib/fmod/libfmodex64.so ./libggfonts.so
LFLAGS = $(LIB) -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: lab1

lab1: lab1.cpp ppm.cpp fmod.c log.cpp
	g++ $(CFLAGS)  lab1.cpp ppm.cpp log.cpp fmod.c -Wall -Wextra $(LFLAGS) -olab1 -lX11 -lGL -lm

clean:
	rm -f lab1
	rm -f *.o


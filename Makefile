#Generic makefile for ALGLIB Github mirror at https://github.com/georgehodgkins/ALGLIB

CPPFLAGS = -I. -c -O3

ifdef defines
	CPPFLAGS += $(defines)
endif

all: libalg.a

libalg.a:
	g++ $(CPPFLAGS) *.cpp
	ar rcs $@ *.o
	rm -f *.gch *.o

clean: 
	rm -f libalg.a

#
# Type 'make' with this 'makefile' file to build the Project 2 code.
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: os

Runtime.o: Runtime.s
	asm Runtime.s

Switch.o: Switch.s
	asm Switch.s

System.s: System.kph System.kpl
	kpl System -unsafe

System.o: System.s
	asm System.s

List.s: List.kph List.kpl System.kph
	kpl List -unsafe

List.o: List.s
	asm List.s

Thread.s: Thread.kph Thread.kpl System.kph List.kph
	kpl Thread -unsafe

Thread.o: Thread.s
	asm Thread.s

Synch.s: Synch.kph Synch.kpl Thread.kph List.kph System.kph
	kpl Synch

Synch.o: Synch.s
	asm Synch.s

Main.s: Main.kph Main.kpl Thread.kph List.kph System.kph Synch.kph
	kpl Main -unsafe

Main.o: Main.s
	asm Main.s

os: System.o List.o Thread.o Switch.o Synch.o Main.o Runtime.o
	lddd System.o List.o Thread.o Switch.o Synch.o Main.o Runtime.o -o os

.PHONY: clean

clean:
	rm Runtime.o Switch.o System.s System.o List.s List.o Thread.s Thread.o \
		Synch.s Synch.o Main.s Main.o os

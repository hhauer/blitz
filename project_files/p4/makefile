#
# Type 'make' with this 'makefile' file to build the BLITZ OS kernel
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

List.s: System.kph List.kph List.kpl
	kpl List -unsafe

List.o: List.s
	asm List.s

BitMap.s: System.kph BitMap.kph BitMap.kpl
	kpl BitMap -unsafe

BitMap.o: BitMap.s
	asm BitMap.s

Kernel.s: System.kph List.kph BitMap.kph Kernel.kph Kernel.kpl
	kpl Kernel -unsafe

Kernel.o: Kernel.s
	asm Kernel.s

Main.s: System.kph List.kph BitMap.kph Kernel.kph Main.kph Main.kpl
	kpl Main -unsafe

Main.o: Main.s
	asm Main.s

os: Runtime.o Switch.o System.o List.o BitMap.o Kernel.o Main.o
	lddd Runtime.o Switch.o System.o List.o BitMap.o Kernel.o Main.o -o os

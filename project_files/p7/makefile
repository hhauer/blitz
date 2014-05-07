#
# Type 'make' with this 'makefile' file to build the BLITZ OS kernel
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: os DISK

#
# Stuff related to user-level programs in general...
#

UserRuntime.o: UserRuntime.s
	asm UserRuntime.s

UserSystem.s: UserSystem.kph UserSystem.kpl
	kpl UserSystem -unsafe

UserSystem.o: UserSystem.s
	asm UserSystem.s

#
# Stuff related to user-level program 'MyProgram'...
#

MyProgram.s: UserSystem.kph MyProgram.kph MyProgram.kpl
	kpl MyProgram -unsafe

MyProgram.o: MyProgram.s
	asm MyProgram.s

MyProgram: UserRuntime.o UserSystem.o MyProgram.o
	lddd UserRuntime.o UserSystem.o MyProgram.o -o MyProgram

#
# Stuff related to user-level program 'TestProgram1'...
#

TestProgram1.s: UserSystem.kph TestProgram1.kph TestProgram1.kpl
	kpl TestProgram1 -unsafe

TestProgram1.o: TestProgram1.s
	asm TestProgram1.s

TestProgram1: UserRuntime.o UserSystem.o TestProgram1.o
	lddd UserRuntime.o UserSystem.o TestProgram1.o -o TestProgram1

#
# Stuff related to user-level program 'TestProgram2'...
#

TestProgram2.s: UserSystem.kph TestProgram2.kph TestProgram2.kpl
	kpl TestProgram2 -unsafe

TestProgram2.o: TestProgram2.s
	asm TestProgram2.s

TestProgram2: UserRuntime.o UserSystem.o TestProgram2.o
	lddd UserRuntime.o UserSystem.o TestProgram2.o -o TestProgram2

#
# Stuff related to user-level program 'TestProgram3'...
#

TestProgram3.s: UserSystem.kph TestProgram3.kph TestProgram3.kpl
	kpl TestProgram3 -unsafe

TestProgram3.o: TestProgram3.s
	asm TestProgram3.s

TestProgram3: UserRuntime.o UserSystem.o TestProgram3.o
	lddd UserRuntime.o UserSystem.o TestProgram3.o -o TestProgram3

#
# Stuff related to user-level program 'TestProgram4'...
#

TestProgram4.s: UserSystem.kph TestProgram4.kph TestProgram4.kpl
	kpl TestProgram4 -unsafe

TestProgram4.o: TestProgram4.s
	asm TestProgram4.s

TestProgram4: UserRuntime.o UserSystem.o TestProgram4.o
	lddd UserRuntime.o UserSystem.o TestProgram4.o -o TestProgram4


#
# Stuff related to user-level program 'Program1'...
#

Program1.s: UserSystem.kph Program1.kph Program1.kpl
	kpl Program1

Program1.o: Program1.s
	asm Program1.s

Program1: UserRuntime.o UserSystem.o Program1.o
	lddd UserRuntime.o UserSystem.o Program1.o -o Program1


#
# Stuff related to user-level program 'Program2'...
#

Program2.s: UserSystem.kph Program2.kph Program2.kpl
	kpl Program2 -unsafe

Program2.o: Program2.s
	asm Program2.s

Program2: UserRuntime.o UserSystem.o Program2.o
	lddd UserRuntime.o UserSystem.o Program2.o -o Program2

#
# Stuff related to the os kernel...
#

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

#
# Stuff related to the DISK...
#

DISK: MyProgram TestProgram1 TestProgram2 TestProgram3 TestProgram4 \
			file1 file2 file3 file1234abcd \
			Program1 Program2 \
			FileWithVeryLongName012345678901234567890123456789
	diskUtil -i
	diskUtil -a file1 file1
	diskUtil -a MyProgram MyProgram
	diskUtil -a TestProgram1 TestProgram1
	diskUtil -a TestProgram2 TestProgram2
	diskUtil -a TestProgram3 TestProgram3
	diskUtil -a TestProgram4 TestProgram4
	diskUtil -a file2 file2
	diskUtil -a file3 file3
	diskUtil -a file1234abcd file1234abcd
	diskUtil -a Program1 Program1
	diskUtil -a Program2 Program2
	diskUtil -a FileWithVeryLongName012345678901234567890123456789 \
			FileWithVeryLongName012345678901234567890123456789


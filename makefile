#
# makefile for all BLITZ tools
#
# Harry Porter - 5 September 2007
# Kendall Stewart - 22 March 2014
#   - added flags to suppress warnings and linker errors
#   - removed sections not relevant to x86 compilation
#
# To compile all the Blitz Tools, type 'make' with this 'makefile' file in a
# directory containing the source files for all the Blitz.  The Unix "make"
# utility will execute all the necessary compiles as needed, based
# on files' most-recent-update times.
#
# Here is a list of the executables that should be produced:
#
#    asm
#    dumpObj
#    lddd
#    blitz
#    kpl
#    diskUtil
#    check
#    endian
#    hexdump
# 

CC=cc
CFLAGS=-g -m32 -w -Wl,--no-as-needed -lm -DBLITZ_HOST_IS_LITTLE_ENDIAN
CPLUSPLUS=g++
CPLUSPLUSFLAGS=-g -m32 -w -DBLITZ_HOST_IS_LITTLE_ENDIAN
LINKFLAGS=


all: asm dumpObj lddd blitz diskUtil hexdump check endian kpl

asm: asm.c
	$(CC) $(CFLAGS) asm.c -o asm

lddd: lddd.c
	$(CC) $(CFLAGS) lddd.c -o lddd

blitz: blitz.c
	$(CC) $(CFLAGS) blitz.c -o blitz

dumpObj: dumpObj.c
	$(CC) $(CFLAGS) dumpObj.c -o dumpObj

diskUtil: diskUtil.c
	$(CC) $(CFLAGS) diskUtil.c -o diskUtil

hexdump: hexdump.c
	$(CC) $(CFLAGS) hexdump.c -o hexdump

check: check.c
	$(CC) $(CFLAGS) check.c -o check

endian: endian.c
	$(CC) $(CFLAGS) endian.c -o endian

kpl:	main.o lexer.o ast.o printAst.o parser.o mapping.o check.o ir.o gen.o
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) $(LINKFLAGS)\
		main.o lexer.o ast.o printAst.o parser.o\
		mapping.o check.o ir.o  gen.o -o kpl

main.o: main.cc main.h ast.h ir.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c main.cc

lexer.o: lexer.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c lexer.cc

ast.o: ast.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c ast.cc

printAst.o: printAst.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c printAst.cc

parser.o: parser.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c parser.cc

mapping.o: mapping.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c mapping.cc

check.o: check.cc main.h ast.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c check.cc

ir.o: ir.cc main.h ast.h ir.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c ir.cc

gen.o: gen.cc main.h ast.h ir.h
	$(CPLUSPLUS) $(CPLUSPLUSFLAGS) -c gen.cc


# The Blitz System #

The BLITZ System is a collection of software designed to support a university-level course on Operating Systems. Over the course of one or two terms, students will implement a small, but complete, operating system kernel. The BLITZ software provides the framework for these student projects. (Description from author's home page
at <http://web.cecs.pdx.edu/~harry/Blitz/>)

## About This Project ##

By default the blitz system uses .c and .h as the extensions for its KPL programming language. In any reasonable IDE, these will be detected as C, which KPL is nothing like, and any automatic linters or syntax highlighting will fail to produce useful results.

This packaging of Blitz is based on updates made by Kendall Stewart at PSU. <http://web.cecs.pdx.edu/~kstew2/cs333/blitz-guide.md>

I made the following additional changes:
* The main makefile was modernized to support a ./bin/ folder for adding just Blitz binaries to the path.
* The KPL compiler was modified to use .kpl and .kph instead of .c and .h for source files.
* All 8 projects from Harry Porter's website were downloaded to the project_files subdirectory.
* Provided project .c and .h files were changed to .kpl and .kph, makefiles were modified to match.
* Clean targets were provided for the first 5 projects.

No other file modifications were made to the source. No problem answers are provided.

# Testing and Support #

This version of Blitz was only tested on a modern Linux Mint (Ubuntu derivative) machine. I imagine it will compile on any relatively modern *nix without trouble. Your mileage may vary with compiling it on Windows or Mac, but I imagine the guide provided by Kendall will still apply.

# Installing Blitz #

Please follow Kendall Stewart's install guide at <http://web.cecs.pdx.edu/~kstew2/cs333/blitz-guide.md>.
The only thing to keep in mind is that I have moved the Blitz binaries by default to the "bin" subdirectory under the main project repo.

# No Cheating! #

Feel free to fork this project. Feel free to keep your homework in a git repo, but please do not commit your answers to github. Students learn best when forced to tackle a problem head-on. Looking up a provided solution bypasses the learning process. While it is incumbent in the end on each of us not to cheat in our own academic career, it is also prudent to do our best not to make it easy for others to pass our work off as their own.

# License #

	Copyright 2002-2007, Harry H. Porter III

	This file may be freely copied, modified and compiled, on the sole condition that if you modify it...
		(1) Your name and the date of modification is added to this comment under "Modifications by", and
		(2) Your name and the date of modification is added to the printHelp() routine in file "main.cc" under "Modifications by".
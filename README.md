### Panama Tutorial

**Warning**: I'm quite new to C/C++ and programming Windows! It is likely that I'm following bad practices and giving just inappropriate examples. Please let me know if you have any questions, comments or suggestions!

"I am always ready to learn, but I do not always like to be taught." – Winston Churchill

#### Tutorials

* 001 - Java calls C void method without parameters, C writes to console - gcc
* 002 - C returns the sum of the two passed int parameters - gcc
* 003 - C returns the center Point of two Point structs - gcc
* 004 - Java calls C++ main (default entry point) and main2 without parameters, avoid name mangling, C++ writes to stdout - g++
* 005 - Java calls C++/WinRT and prints number of devices to stdout by using Windows Runtime (WinRT) - Visual Studio 2019 solution and MSBuild

#### Prerequisites

* Windows 10 x64 
* OpenJDK-panama (04.10.2020) or OpenJDK 16-panama+2-193 (https://jdk.java.net/panama/)
* Mingw-w64 (http://mingw-w64.org/)
	* default and select architecture x86_64 instead of i686
* Visual Studio 2019 Community Edition 16.8.0 (https://visualstudio.microsoft.com/vs/community/)
	* default and add MSBuild under Individual Components tab

#### More to read

* https://cr.openjdk.java.net/~jrose/panama/isthmus-in-the-vm-2014.html
* http://cr.openjdk.java.net/~mcimadamore/panama/jextract_distilled.html
* http://cr.openjdk.java.net/~mcimadamore/panama/panama-binder-v3.html
* https://github.com/openjdk/panama-foreign/blob/foreign-jextract/doc/panama_jextract.md
* https://www.nirsoft.net/utils/dll_export_viewer.html

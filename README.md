### Panama Tutorial

"I am always ready to learn, but I do not always like to be taught." – Winston Churchill

#### Tutorials

* 001 - Java calls C void method without parameters, C writes to console
* 002 - C returns the sum of the two passed int parameters
* 003 - C returns the center Point of two Point structs
* 004 - Java calls C++ main (default entry point) and main2 without parameters, C++ writes to stdout

#### Prerequisites

* Windows 10 x64 
* Build OpenJDK-panama (01.05.2020) or OpenJDK 14 build 14-panama+1-15 (https://jdk.java.net/panama/)
* Mingw-w64 (http://mingw-w64.org/)
* LLVM (https://releases.llvm.org/download.html)

#### Building OpenJDK

Only if you want to do it on your own. Since the actual OpenJDK-panama build is rather old I had to do this. I expected much more hassle!

* Fresh Windows 10 installation: install all patches, disable UAC, antivirus, antimaleware
	* hint: use VirtualBox (https://www.virtualbox.org/) with a free VM from MS
(https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/) to avoid interefences between your host/development and the OpenJDK build environment
* Cygwin (https://www.cygwin.com/)
	* install default, git, autoconf, make, unzip and zip packages
* Visual Studio 2017 Community Edition (https://www.techspot.com/downloads/downloadnow/6278/?evp=ec1cdb914a1b435daaf013a4a084b093&file=1)
	* install default and "Desktop development with C++" package
* OpenJDK 14.0.1 (https://jdk.java.net/14/) as Bootstrap JDK
* git clone https://github.com/openjdk/panama-foreign.git
* bash configure
* make images

#### More to read

* https://github.com/openjdk/panama-foreign/blob/foreign-jextract/doc/panama_jextract.md
* http://cr.openjdk.java.net/~mcimadamore/panama/jextract_distilled.html
* http://cr.openjdk.java.net/~mcimadamore/panama/panama-binder-v3.html

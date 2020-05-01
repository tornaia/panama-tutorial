### Panama Tutorial

"I am always ready to learn, but I do not always like to be taught." – Winston Churchill

#### Tutorials

* 001 - Java calls C void method without parameters, C writes to console
* 002 - C returns the sum of the two passed int parameters
* 003 - C returns the center Point of two Point structures

#### Prerequisites

* Windows 10 x64 
* Build OpenJDK-panama (01.05.2020) or OpenJDK 14 build 14-panama+1-15 (https://jdk.java.net/panama/)
* Mingw-w64 (http://mingw-w64.org/)
* LLVM (https://releases.llvm.org/download.html)

#### Building OpenJDK

* Fresh Windows 10 installation: install all patches, disable UAC, antivirus, antimaleware
** Hint: use VirtualBox (https://www.virtualbox.org/) with a free VM (https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/) to avoid interefences between your host/development environment and the OpenJDK build environment
* Cygwin (https://www.cygwin.com/)
** default, git, autoconf, make, unzip, zip
* Visual Studio 2017 Community Edition (https://www.techspot.com/downloads/downloadnow/6278/?evp=ec1cdb914a1b435daaf013a4a084b093&file=1)
** default, Desktop development with C++
* OpenJDK 14.0.1 (https://jdk.java.net/14/)
* Git clone https://github.com/openjdk/panama-foreign.git
* bash configure
* make images

#### More to read

* http://cr.openjdk.java.net/~mcimadamore/panama/jextract_distilled.html
* https://github.com/openjdk/panama-foreign/blob/foreign-jextract/doc/panama_jextract.md

SET PATH=c:\Program Files\Java\jdk-16\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-16\

rd /s /q target

mkdir target\gcc
gcc -shared -static -o target\gcc\center.dll -Wall center.c

jextract --source -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial003.c -I target\gcc -l center center.h
jextract -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial003.c -I target\gcc -l center center.h

mkdir target\jar
jar -cvf target\jar\center.h.jar -C target\jextract\classes .

jdeps --generate-module-info target/jdeps --module-path panama.tutorial003c --add-modules jdk.incubator.foreign target\jar\center.h.jar
del target\jar\center.h.jar

copy target\jdeps\center.h\module-info.java target\jextract\classes\module-info.java
javac -d target\jextract\classes target\jextract\classes\module-info.java

jar -cvf target\jar\center.h.jar -C target\jextract\classes .

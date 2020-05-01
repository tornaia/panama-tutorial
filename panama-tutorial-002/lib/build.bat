SET PATH=c:\Program Files\Java\jdk-panama-nightly\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-panama-nightly\

rd /s /q target

mkdir target\gcc
gcc -shared -static -o target\gcc\sum.dll -Wall sum.c

jextract --source -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial002.c -I target\gcc -l sum sum.h
jextract -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial002.c -I target\gcc -l sum sum.h

mkdir target\jar
jar -cvf target\jar\sum.h.jar -C target\jextract\classes .

jdeps --generate-module-info target/jdeps --module-path panama.tutorial002c --add-modules jdk.incubator.foreign target\jar\sum.h.jar
del target\jar\sum.h.jar

copy target\jdeps\sum.h\module-info.java target\jextract\classes\module-info.java
javac -d target\jextract\classes target\jextract\classes\module-info.java

jar -cvf target\jar\sum.h.jar -C target\jextract\classes .

SET PATH=c:\Program Files\Java\jdk-panama-nightly\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-panama-nightly\

rd /s /q target

mkdir target\gcc
gcc -shared -static -o target\gcc\helloworld.dll -Wall helloworld.c

jextract --source -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial001.c -I target\gcc -l helloworld helloworld.h
jextract -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial001.c -I target\gcc -l helloworld helloworld.h

mkdir target\jar
jar -cvf target\jar\helloworld.h.jar -C target\jextract\classes .

jdeps --generate-module-info target/jdeps --module-path panama.tutorial001c --add-modules jdk.incubator.foreign target\jar\helloworld.h.jar
del target\jar\helloworld.h.jar

copy target\jdeps\helloworld.h\module-info.java target\jextract\classes\module-info.java
javac -d target\jextract\classes target\jextract\classes\module-info.java

jar -cvf target\jar\helloworld.h.jar -C target\jextract\classes .

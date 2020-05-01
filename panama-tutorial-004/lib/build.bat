SET PATH=c:\Program Files\Java\jdk-panama-nightly\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-panama-nightly\

rd /s /q target

mkdir target\g++
g++ -shared -static -o target\g++\helloworldcpp.dll -Wall helloworldcpp.cpp

jextract --source -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial004.cpp -I target\g++ -l helloworldcpp helloworldcpp.h
jextract -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial004.cpp -I target\g++ -l helloworldcpp helloworldcpp.h

mkdir target\jar
jar -cvf target\jar\helloworldcpp.h.jar -C target\jextract\classes .

jdeps --generate-module-info target/jdeps --module-path panama.tutorial004c --add-modules jdk.incubator.foreign target\jar\helloworldcpp.h.jar
del target\jar\helloworldcpp.h.jar

copy target\jdeps\helloworldcpp.h\module-info.java target\jextract\classes\module-info.java
javac -d target\jextract\classes target\jextract\classes\module-info.java

jar -cvf target\jar\helloworldcpp.h.jar -C target\jextract\classes .

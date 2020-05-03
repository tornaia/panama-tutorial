SET PATH=c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\;c:\Program Files\Java\jdk-panama-nightly\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-panama-nightly\

rd /s /q target
rd /s /q helloworldwinrt\target
rd /s /q helloworldwinrt\x64

MSBuild.exe helloworldwinrt.sln /p:OutDir=target\

jextract --source -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial005.cpp -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0" -I helloworldwinrt\target -l helloworldwinrt helloworldwinrt\helloworldwinrt.h
jextract -d target\jextract\classes --target-package com.github.tornaia.panama.tutorial005.cpp -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0" -I helloworldwinrt\target -l helloworldwinrt helloworldwinrt\helloworldwinrt.h

mkdir target\jar
jar -cvf target\jar\helloworldwinrt.h.jar -C target\jextract\classes .

jdeps --generate-module-info target/jdeps --module-path panama.tutorial005c --add-modules jdk.incubator.foreign target\jar\helloworldwinrt.h.jar
del target\jar\helloworldwinrt.h.jar

copy target\jdeps\helloworldwinrt.h\module-info.java target\jextract\classes\module-info.java
javac -d target\jextract\classes target\jextract\classes\module-info.java

jar -cvf target\jar\helloworldwinrt.h.jar -C target\jextract\classes .

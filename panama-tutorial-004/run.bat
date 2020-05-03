SET PATH=c:\Program Files\Java\jdk-panama-nightly\bin\;%PATH%
SET JAVA_HOME=c:\Program Files\Java\jdk-panama-nightly\

java --enable-preview --add-modules jdk.incubator.foreign -Dforeign.restricted=permit -Djava.library.path=lib/target/g++ -classpath target/classes;lib/target/jar/* com.github.tornaia.panama.tutorial004.Tutorial004
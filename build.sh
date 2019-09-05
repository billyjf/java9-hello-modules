#!/usr/bin/env bash
rm -rf out/* && rm -f *.jar

javac -d out --module-source-path src $(find src -iname '*.java')
jar --create --file=com.billyjf.hello.api.HelloProvider.jar --module-version=1.0 -C out/helloproviders .
jar --create --file=helloworld.jar --main-class=com.javamodularity.helloworld.HelloWorld --module-version=1.0 -C out/helloworld .
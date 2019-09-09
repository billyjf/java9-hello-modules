#!/usr/bin/env bash -e
rm -rf out/* && rm -f *.jar

javac -d out --module-source-path src $(find src -iname '*.java')
jar --create --file=api.jar --module-version=1.0 -C out/helloapi .
jar --create --file=World.jar --module-version=1.0 -C out/worldhelloprovider .
jar --create --file=Jupiter.jar --module-version=1.0 -C out/jupiterhelloprovider .
jar --create --file=helloworld.jar --main-class=com.javamodularity.helloworld.HelloWorld --module-version=1.0 -C out/helloworld .
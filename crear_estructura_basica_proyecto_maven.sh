#!/bin/bash
echo ''
echo 'Creando estructura basica'
echo 'De un proyecto maven inicial'
echo ''
echo 'Init maven project'
echo ''
mvn archetype:generate "-DgroupId=com.sqlsamples" "-DartifactId=SqlServerSample" "-DarchetypeAr
tifactId=maven-archetype-quickstart" "-Dversion=1.0.0"
echo ''
echo 'Modifica pom a necesidad'
echo ''
mvn package # mvn clean package install
mvn -q exec:java "-Dexec.mainClass=com.sqlsamples.App"
echo ''
echo 'Listo'
echo ''
exit 0;

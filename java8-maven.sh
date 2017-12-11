#!/bin/bash

set -e

echo '###############################################################'
echo '$ mvn clean verify'
echo '###############################################################'
mvn clean verify


echo '###############################################################'
echo '$ mvn dependency:copy-dependencies -DoutputDirectory=target/lib'
echo '###############################################################'
mvn dependency:copy-dependencies -DoutputDirectory=target/lib


echo '###############################################################'
echo '$ java -cp target/lib/*:target/cqrs-1.18.0-SNAPSHOT.jar com.iluwatar.cqrs.app.App'
echo '###############################################################'
java -cp target/lib/*:target/cqrs-1.18.0-SNAPSHOT.jar com.iluwatar.cqrs.app.App

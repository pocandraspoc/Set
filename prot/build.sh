#!/bin/bash

sbt compile
#sbt run
sbt package
scala ./target/scala-2.11/mypproject_2.11-1.1.jar
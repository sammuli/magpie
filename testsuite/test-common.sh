#!/bin/bash

java16="1.6"
java17="1.7"

hadoopjava16versions="2.2.0 2.3.0 2.4.0 2.4.1 2.5.0 2.5.1 2.5.2 2.6.0 2.6.1 2.6.2 2.6.3 2.6.4"
# decommissionhdfsnodes doesn't work reliably in 2.2.X, removing it
hadoopjava16versionsdecommission="2.3.0 2.4.0 2.4.1 2.5.0 2.5.1 2.5.2 2.6.0 2.6.1 2.6.2 2.6.3 2.6.4"
hadoopjava17versions="2.7.0 2.7.1 2.7.2"

mahouthadoop27java17versions="0.11.0 0.11.1 0.11.2 0.12.0 0.12.1"
mahouthadoop27java17versions_hadoopversion="2.7.0"

pighadoop24java16versions="0.12.0 0.12.1"
pighadoop24java16versions_hadoopversion="2.4.0"
pighadoop26java16versions="0.13.0 0.14.0"
pighadoop26java16versions_hadoopversion="2.6.0"
pighadoop27java17versions="0.15.0"
pighadoop27java17versions_hadoopversion="2.7.0"

hbasehadoop26zookeeper346java16versions="0.98.3-hadoop2 0.98.9-hadoop2"
hbasehadoop26zookeeper346java16versions_hadoopversion="2.6.0"
hbasehadoop26zookeeper346java16versions_zookeeperversion="3.4.6"
hbasehadoop27zookeeper348java17versions="0.99.0 0.99.1 0.99.2 1.0.0 1.0.1 1.0.1.1 1.0.2 1.1.0 1.1.0.1 1.1.1 1.1.2 1.1.3 1.1.4 1.2.0 1.2.1"
hbasehadoop27zookeeper348java17versions_hadoopversion="2.7.0"
hbasehadoop27zookeeper348java17versions_zookeeperversion="3.4.8"


phoenixhbase11hadoop27zookeeper348java17versions="4.5.1-HBase-1.1 4.5.2-HBase-1.1 4.6.0-HBase-1.1 4.7.0-HBase-1.1"
phoenixhbase11hadoop27zookeeper348java17versions_hbaseversion="1.1.0"
phoenixhbase11hadoop27zookeeper348java17versions_hadoopversion="2.7.0"
phoenixhbase11hadoop27zookeeper348java17versions_zookeeperversion="3.4.8"

spark0Xjava16hadoop2versions="0.9.1-bin-hadoop2 0.9.2-bin-hadoop2"
spark0Xjava16hadoop2versions_hadoopversion="2.2.0"
spark1Xjava16hadoop24versions="1.2.0-bin-hadoop2.4 1.2.1-bin-hadoop2.4 1.2.2-bin-hadoop2.4 1.3.0-bin-hadoop2.4 1.3.1-bin-hadoop2.4"
spark1Xjava16hadoop24versions_hadoopversion="2.4.0"
spark1Xjava17hadoop26versions="1.4.0-bin-hadoop2.6 1.4.1-bin-hadoop2.6 1.5.0-bin-hadoop2.6 1.5.1-bin-hadoop2.6 1.5.2-bin-hadoop2.6 1.6.0-bin-hadoop2.6 1.6.1-bin-hadoop2.6"
spark1Xjava17hadoop26versions_hadoopversion="2.6.0"

stormzookeeper346java16versions="0.9.3 0.9.4"
stormzookeeper346java16versions_zookeeperversion="3.4.6"
stormzookeeper348java17versions="0.9.5 0.9.6 0.10.0"
stormzookeeper348java17versions_zookeeperversion="3.4.8"

kafkazookeeper348java17versions="2.11-0.9.0.0"
kafkazookeeper348java17versions_zookeeperversion="3.4.8"

zookeeperjava17versions="3.4.0 3.4.1 3.4.2 3.4.3 3.4.4 3.4.5 3.4.6 3.4.7 3.4.8"
#!/bin/bash

source test-generate-common.sh
source test-common.sh

GenerateMahoutStandardTests_ClusterSyntheticcontrol() {
    mahoutversion=$1
    hadoopversion=$2
    javaversion=$3

    cp ../submission-scripts/script-${submissiontype}/magpie.${submissiontype}-hadoop-and-mahout magpie.${submissiontype}-hadoop-and-mahout-hadoop-${hadoopversion}-mahout-${mahoutversion}-run-clustersyntheticcontrol
    cp ../submission-scripts/script-${submissiontype}/magpie.${submissiontype}-hadoop-and-mahout magpie.${submissiontype}-hadoop-and-mahout-hadoop-${hadoopversion}-mahout-${mahoutversion}-run-clustersyntheticcontrol-no-local-dir

    sed -i -e 's/export HADOOP_VERSION="\(.*\)"/export HADOOP_VERSION="'"${hadoopversion}"'"/' magpie.${submissiontype}-hadoop-and-mahout-hadoop-${hadoopversion}-mahout-${mahoutversion}*
    
    sed -i -e 's/export MAHOUT_VERSION="\(.*\)"/export MAHOUT_VERSION="'"${mahoutversion}"'"/' magpie.${submissiontype}-hadoop-and-mahout-hadoop-${hadoopversion}-mahout-${mahoutversion}*

    JavaCommonSubstitution ${javaversion} `ls magpie.${submissiontype}-hadoop-and-mahout-hadoop-${hadoopversion}-mahout-${mahoutversion}*`
}

GenerateMahoutStandardTests() {

    cd ${MAGPIE_SCRIPTS_HOME}/testsuite/

    echo "Making Mahout Standard Tests"

    for mahoutversion in ${mahouthadoop27java17versions}
    do
	if [ "${hadoop_2_7_0}" != "y" ]
	then
	    echo "Cannot generate Mahout standard tests that depend on Hadoop 2.7.0, it's not enabled"
	    break
	fi
	for hadoopversion in 2.7.0
	do
	    GenerateMahoutStandardTests_ClusterSyntheticcontrol ${mahoutversion} ${hadoopversion} ${java17}
	done
    done
}

GenerateMahoutDependencyTests_Dependency1() {
    mahoutversion=$1
    hadoopversion=$2
    javaversion=$3

    cp ../submission-scripts/script-${submissiontype}/magpie.${submissiontype}-hadoop-and-mahout magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}-hdfsoverlustre-run-clustersyntheticcontrol
    cp ../submission-scripts/script-${submissiontype}/magpie.${submissiontype}-hadoop-and-mahout magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}-hdfsovernetworkfs-run-clustersyntheticcontrol

    sed -i \
	-e 's/export HADOOP_VERSION="\(.*\)"/export HADOOP_VERSION="'"${hadoopversion}"'"/' \
	-e 's/export MAHOUT_VERSION="\(.*\)"/export MAHOUT_VERSION="'"${mahoutversion}"'"/' \
	magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}*run-clustersyntheticcontrol

    sed -i \
	-e 's/export HADOOP_FILESYSTEM_MODE="\(.*\)"/export HADOOP_FILESYSTEM_MODE="hdfsoverlustre"/' \
	-e 's/export HADOOP_HDFSOVERLUSTRE_PATH="\(.*\)"/export HADOOP_HDFSOVERLUSTRE_PATH="'"${lustredirpathsubst}"'\/hdfsoverlustre\/DEPENDENCYPREFIX\/Mahout1A\/'"${mahoutversion}"'"/' \
	magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}*hdfsoverlustre*

    sed -i \
	-e 's/export HADOOP_FILESYSTEM_MODE="\(.*\)"/export HADOOP_FILESYSTEM_MODE="hdfsovernetworkfs"/' \
	-e 's/export HADOOP_HDFSOVERNETWORKFS_PATH="\(.*\)"/export HADOOP_HDFSOVERNETWORKFS_PATH="'"${networkfsdirpathsubst}"'\/hdfsovernetworkfs\/DEPENDENCYPREFIX\/Mahout1A\/'"${mahoutversion}"'"/' \
	magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}*hdfsovernetworkfs*

    JavaCommonSubstitution ${javaversion} `ls magpie.${submissiontype}-hadoop-and-mahout-DependencyMahout1A-hadoop-${hadoopversion}-mahout-${mahoutversion}*run-clustersyntheticcontrol`
}

GenerateMahoutDependencyTests() {

    cd ${MAGPIE_SCRIPTS_HOME}/testsuite/

    echo "Making Mahout Dependency Tests"

# Dependency 1 Tests, run after another

    for mahoutversion in ${mahouthadoop27java17versions}
    do
	if [ "${hadoop_2_7_0}" != "y" ]
	then
	    echo "Cannot generate Mahout dependency tests that depend on Hadoop 2.7.0, it's not enabled"
	    break
	fi
	for hadoopversion in 2.7.0
	do
	    GenerateMahoutDependencyTests_Dependency1 ${mahoutversion} ${hadoopversion} ${java17}
	done
    done
}

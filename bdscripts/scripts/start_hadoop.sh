#!/bin/bash

bash

$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs start namenode
$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs start secondarynamenode
$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs start datanode
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start nodemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start proxyserver
$HDFS_HOME/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver



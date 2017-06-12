#!/bin/bash

bash

$HDFS_HOME/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR stop historyserver

$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop proxyserver


$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop nodemanager


$HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop resourcemanager


$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs stop datanode


$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs stop secondarynamenode

$HDFS_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs stop namenode

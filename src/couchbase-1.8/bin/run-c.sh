#!/bin/bash
BIN_HOME=./../../bin

. $BIN_HOME/utils.sh
. ./workload-env.sh

workloads=("profile=couchbase-${COUCHBASE_VERSION}-c.workload target=100 operationcount=10000"
           "profile=couchbase-${COUCHBASE_VERSION}-c.workload target=300 operationcount=30000"
           "profile=couchbase-${COUCHBASE_VERSION}-c.workload target=500 operationcount=50000"
           "profile=couchbase-${COUCHBASE_VERSION}-c.workload target=800 operationcount=80000"
           "profile=couchbase-${COUCHBASE_VERSION}-c.workload target=1000 operationcount=80000")

workloads=$(array_join "${workloads[@]}")

$BIN_HOME/run-workload.sh -w "$workloads"
#!/bin/sh
set -e

mkdir -p /gitstats

additionalArgs="";

if [ ! -z "${PROJECT_NAME}" ] ; then 
    echo "PROJECT NAME = ${PROJECT_NAME}"
    additionalArgs="${additionalArgs} -n ${PROJECT_NAME}"
fi

git_stats generate -p /git -o /gitstats $additionalArgs
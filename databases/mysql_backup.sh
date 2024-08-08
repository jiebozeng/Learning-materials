#!/bin/bash

#date, get it for backup filename everyday
d0=$(date "+%Y_%m_%d")
d1=$(date "+%Y_%m")

#want to backup table name. array
tableNames=("ts_user" "ts_user_finance")

# file path
dir="./$d1/$d0"

# check if exist
if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "directory $dir created."
else
    echo "directory $dir already exists."
fi

#if open gtid add --set-gtid-purged=OFF
for v in ${tableNames[@]}
do
  realName=${v}
  mysqldump -h 127.0.0.1 -u account -ppassword database v > ${dir}/${realName}.sql
done

#!/bin/bash

## This is simple script to run reindex command at night, shoud be run under postgres user

curr_dir="$(dirname "$0")"

source $curr_dir/postgres.cfg

echo "-------------------------------------------" >> $reindex_log
date >> $reindex_log
echo "-------------------------------------------" >> $reindex_log

/usr/bin/reindexdb $db_name &>> $reindex_log

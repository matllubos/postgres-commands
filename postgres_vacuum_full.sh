#!/bin/bash

## This is simple script to run vacuum full command at night, shoud be run under postgres user

curr_dir="$(dirname "$0")"

source $curr_dir/postgres.cfg

echo "-------------------------------------------" >> $vacuum_full_log
date >> $vacuum_full_log
echo "-------------------------------------------" >> $vacuum_full_log

/usr/bin/vacuumdb -f -v -d $db_name &>> $vacuum_full_log

#!/bin/bash

## This is simple script to run vacuum command at night, shoud be run under postgres user

curr_dir="$(dirname "$0")"

source $curr_dir/postgres.cfg

echo "-------------------------------------------" >> $vacuum_log
date >> $vacuum_log
echo "-------------------------------------------" >> $vacuum_log

/usr/bin/vacuumdb -v -d $db_name &>> $vacuum_log

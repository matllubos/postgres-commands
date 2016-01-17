#!/bin/bash
sudo -i -u postgres pg_dumpall > temp.sql
7za a pg_backup_$1_`date +%d-%m-%Y_%H:%M:%S`.7z temp.sql > /dev/null
rm temp.sql

#!/bin/sh
#
# Execute bro with some cmdline-args to demonstrate how to use these
# scripts
#
# In this example, all *.log files will be written into the current
# working folder, while all stream files will be stored in the
# /data/bro-data/ folder (defined by the Conn::extract_folder const).
# This const will *have to* end with the '/' character.
#
exec bro -i eth1 -b -e 'redef Conn::extract_folder = "/data/bro-data/"' \
   ./local.bro 2> /var/log/brotex-stderr.log

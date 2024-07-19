#!/bin/bash

logfile_default="/home/moon/log.txt"

logfile="${1:-$logfile_default}"

if [[ ! -f "$logfile" ]]; then
  echo There is no $logfile >&2
  #echo There is no $logfile >&2
  #exit 20;
fi

grep -v "level=error\|level=warning" $logfile
grep -i "level=error\|level=warning" $logfile >&2
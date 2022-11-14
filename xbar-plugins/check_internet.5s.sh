#!/bin/bash
LATENCY_THRESHOLD=30
latency=$(ping -c1 ya.ru -t 2 | \
    perl -n -e'/time=(\d+)/ && print $1')

if [[ ! -z "$latency" ]]; then
  if [ "$latency" -gt $LATENCY_THRESHOLD ]; then
    echo "$latency ms"
  else
    echo "✔︎"
  fi
else
  echo "❎"
fi
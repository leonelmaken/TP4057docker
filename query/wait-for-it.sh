#!/bin/bash
set -e

host="$1"
shift
cmd="$@"

until nc -z -v -w30 $host; do
  echo "Waiting for $host..."
  sleep 10
done

exec $cmd

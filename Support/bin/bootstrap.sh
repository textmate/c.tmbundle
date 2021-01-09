#!/bin/bash

A_OUT=$(mktemp "${TMPDIR}/${TM_DISPLAYNAME:-untitled}_XXX")
trap 'rm "$A_OUT"' EXIT

"$@" -o "$A_OUT"

if [ $? -eq 0 ]; then
  "$A_OUT"
fi

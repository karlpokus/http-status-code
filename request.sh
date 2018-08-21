#!/bin/bash

if [ $# -ne 2 ]; then
	exit 1
fi

METHOD="$1"
URL="$2"

STATUS=$(curl -i -X $METHOD --connect-timeout 5 --max-time 5 $URL 2>/dev/null | head -n 1 | cut -d' ' -f 2)

echo $STATUS

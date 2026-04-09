#!/bin/bash

# source locations for external components
VOSI=../VOSI
DALI=../DALI
test -d $VOSI || VOSI=../VOSI.git
test -d $DALI || DALI=../DALI.git

ARGS="$1 -avc --delete"

echo "found VOSI: $VOSI"
rsync $ARGS $VOSI/openapi/vosi openapi/

echo "get UWS from $VOSI"
rsync $ARGS $VOSI/openapi/uws openapi/

echo "found DALI: $DALI"
rsync $ARGS $DALI/openapi/dali openapi/


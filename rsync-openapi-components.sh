#!/bin/bash

# source locations for external components
VOSI=$HOME/work/dev/ivoa-std/VOSI.git
DALI=$HOME/work/dev/ivoa-std/DALI.git

ARGS="$1 -avc --delete"

rsync $ARGS $VOSI/openapi/vosi openapi/
rsync $ARGS $DALI/openapi/dali openapi/


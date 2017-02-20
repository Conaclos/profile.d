#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

if command -v 'less' > /dev/null 2>&1; then
    export LESSHISTFILE='/dev/null' # Prevent Less history
fi


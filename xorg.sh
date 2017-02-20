#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

command -v 'xinit' > /dev/null 2>&1 &&
    export XAUTHORITY=$XDG_RUNTIME_DIR'/Xauthority'
        # XDG fix


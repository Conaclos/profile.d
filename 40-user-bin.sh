#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

id -nG $USER | grep -qw 'wheel' &&
    export PATH=$PATH':'$HOME'/.local/bin'
        # Add user scripts in $PATH if s-he belongs to an admin group (wheel)


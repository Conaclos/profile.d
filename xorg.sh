#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

test -z "$XAUTHORITY" && ! test -f "$HOME"'/.Xauthority' &&
    export XAUTHORITY="$XDG_RUNTIME_DIR"'/Xauthority'
        # XDG fix if Xauthority does not already exist


#
# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).
#

test -z "$XAUTHORITY" && ! test -f "$HOME/.Xauthority" &&
    export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
        # XDG fix if Xauthority does not already exist


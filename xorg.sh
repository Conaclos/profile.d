# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).

if test -z "${XAUTHORITY+x}" && ! test -f "$HOME/.Xauthority";
    # XDG fix if Xauthority does not already exist
    export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
fi

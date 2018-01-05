#
# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).
#

id -nG "$USER" | grep -qE '\bsudo\b|\bwheel\b' &&
    export PATH="$PATH:$HOME/.local/bin"
        # Add user bin in $PATH if s-he belongs to an sudo group (wheel or sudo)


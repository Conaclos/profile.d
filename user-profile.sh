#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#


# Load profiles from /etc/profile.d
if test -d "${XDG_CONFIG_HOME:-$HOME/.config}"'/profile.d/'; then
    for profile in "${XDG_CONFIG_HOME:-$HOME/.config}"'/profile.d/'*.sh; do
        test -r "$profile" && . "$profile"
    done; unset profile
fi

test -z "$PAGER" &&
    export PAGER="$(command -v most || command -v less || command -v more)"

test -n "$VISUAL" && test -z "$EDITOR" &&
    export EDITOR="$VISUAL"


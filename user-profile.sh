#
# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).
#

# Load profiles from /etc/profile.d
if test -d "${XDG_CONFIG_HOME:-"$HOME/.config"}/profile.d/"; then
    for profile in "${XDG_CONFIG_HOME:-"$HOME/.config"}/profile.d/"*.sh; do
        # shellcheck source=/dev/null
        test -r "$profile" && . "$profile"
    done; unset profile
fi

test -z "$PAGER" && export PAGER &&
    PAGER="$(command -v 'most' || command -v 'less' || command -v 'more')"

test -n "$VISUAL" && test -z "$EDITOR" &&
    export EDITOR="$VISUAL"


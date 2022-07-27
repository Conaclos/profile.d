# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).

# Load profiles from /etc/profile.d
if test -d "${XDG_CONFIG_HOME:-"$HOME/.config"}/profile.d/"; then
    for profile in "${XDG_CONFIG_HOME:-"$HOME/.config"}/profile.d/"*.sh; do
        if test -r "$profile"; then
            # shellcheck source=/dev/null
            . "$profile"
        fi
    done; unset profile
fi

if test -z "${PAGER-}"; then
    PAGER="$(command -v 'most' || command -v 'less' || command -v 'more')"
    export PAGER
fi

if test -z "${EDITOR+x}" && test -n "${VISUAL-}"; then
    export EDITOR="$VISUAL"
fi

# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).

if test -r "${XDG_CONFIG_HOME:-"$HOME/.config"}/locale.conf"; then
    # shellcheck source=/dev/null
    . "${XDG_CONFIG_HOME:-"$HOME/.config"}/locale.conf"
elif test -r '/etc/locale.conf'; then
    # shellcheck source=/dev/null
    . '/etc/locale.conf'
fi

export LANG="${LANG-'C.UTF-8'}"

if test -n "${LC_ADDRESS+x}"; then
    export LC_ADDRESS
fi
if test -n "${LC_COLLATE+x}"; then
    export LC_COLLATE
fi
if test -n "${LC_CTYPE+x}"; then
    export LC_CTYPE
fi
if test -n "${LC_IDENTIFICATION+x}"; then
    export LC_IDENTIFICATION
fi
if test -n "${LC_MEASUREMENT+x}"; then
    export LC_MEASUREMENT
fi
if test -n "${LC_MESSAGES+x}"; then
    export LC_MESSAGES
fi
if test -n "${LC_MONETARY+x}"; then
    export LC_MONETARY
fi
if test -n "${LC_NAME+x}"; then
    export LC_NAME
fi
if test -n "${LC_NUMERIC+x}"; then
    export LC_NUMERIC
fi
if test -n "${LC_PAPER+x}"; then
    export LC_PAPER
fi
if test -n "${LC_TELEPHONE+x}"; then
    export LC_TELEPHONE
fi
if test -n "${LC_TIME+x}"; then
    export LC_TIME
fi

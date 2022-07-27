# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).

if test -r "${XDG_CONFIG_HOME:-"$HOME/.config"}/user-dirs.dirs"; then
    # shellcheck source=/dev/null
    . "${XDG_CONFIG_HOME:-"$HOME/.config"}/user-dirs.dirs";

    if test -n "${XDG_DESKTOP_DIR+x}"; then
        export XDG_DESKTOP_DIR
    fi
    if test -n "${XDG_DOCUMENTS_DIR+x}"; then
        export XDG_DOCUMENTS_DIR
    fi
    if test -n "${XDG_DOWNLOAD_DIR+x}"; then
        export XDG_DOWNLOAD_DIR
    fi
    if test -n "${XDG_MUSIC_DIR+x}"; then
        export XDG_MUSIC_DIR
    fi
    if test -n "${XDG_PICTURES_DIR+x}"; then
        export XDG_PICTURES_DIR
    fi
    if test -n "${XDG_PUBLICSHARE_DIR+x}"; then
        export XDG_PUBLICSHARE_DIR
    fi
    if test -n "${XDG_VIDEOS_DIR+x}"; then
        export XDG_VIDEOS_DIR
    fi
fi

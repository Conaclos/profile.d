#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

if test -r "${XDG_CONFIG_HOME:-$HOME/.config}"'/user-dirs.dirs'; then
    # shellcheck source=/dev/null
    . "${XDG_CONFIG_HOME:-$HOME/.config}"'/user-dirs.dirs';

    test -n "$XDG_DESKTOP_DIR" && export XDG_DESKTOP_DIR
    test -n "$XDG_DOCUMENTS_DIR" && export XDG_DOCUMENTS_DIR
    test -n "$XDG_DOWNLOAD_DIR" && export XDG_DOWNLOAD_DIR
    test -n "$XDG_MUSIC_DIR" && export XDG_MUSIC_DIR
    test -n "$XDG_PICTURES_DIR" && export XDG_PICTURES_DIR
    test -n "$XDG_PUBLICSHARE_DIR" && export XDG_PUBLICSHARE_DIR
    test -n "$XDG_VIDEOS_DIR" && export XDG_VIDEOS_DIR
fi


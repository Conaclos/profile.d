#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

test -r ${XDG_CONFIG_HOME:-$HOME'/.config'}'/programs.conf' &&
    . ${XDG_CONFIG_HOME:-$HOME'/.config'}'/programs.conf'

test -n "$BROWSER" && export BROWSER

test -z "$PAGER" &&
    PAGER=$(command -v 'most' || command -v 'less' || command -v 'more')
export PAGER

if test -n "$VISUAL"; then
    export VISUAL
    test -z "$EDITOR" && export EDITOR=$VISUAL
else
    test -n "$EDITOR" && export EDITOR
fi


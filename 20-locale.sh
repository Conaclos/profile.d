#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

if test -r ${XDG_CONFIG_HOME:-$HOME'/.config'}'/locale.conf'; then
    . ${XDG_CONFIG_HOME:-$HOME'/.config'}'/locale.conf'
elif test -r '/etc/locale.conf'; then
    . '/etc/locale.conf'
fi

export LANG=${LANG:-'C'}

test -n "$LC_ADDRESS" && export LC_ADDRESS
test -n "$LC_COLLATE" && export LC_COLLATE
test -n "$LC_CTYPE" && export LC_CTYPE
test -n "$LC_IDENTIFICATION" && export LC_IDENTIFICATION
test -n "$LC_MEASUREMENT" && export LC_MEASUREMENT
test -n "$LC_MESSAGES" && export LC_MESSAGES
test -n "$LC_MONETARY" && export LC_MONETARY
test -n "$LC_NAME" && export LC_NAME
test -n "$LC_NUMERIC" && export LC_NUMERIC
test -n "$LC_PAPER" && export LC_PAPER
test -n "$LC_TELEPHONE" && export LC_TELEPHONE
test -n "$LC_TIME" && export LC_TIME


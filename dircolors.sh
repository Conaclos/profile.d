#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

# ls utility colors according to filetypes
# user-wide: $XDG_CONFIG_HOME/dir_colors
# system-wide: /etc/dir_colors
# See man 5 dir_colors for the configuration file

if test -r ${XDG_CONFIG_HOME:-$HOME'/.config'}'/dir_colors'; then
    eval $(dircolors ${XDG_CONFIG_HOME:-$HOME'/.config'}'/dir_colors')
elif test -r '/etc/dir_colors'; then
    eval $(dircolors '/etc/dir_colors')
fi


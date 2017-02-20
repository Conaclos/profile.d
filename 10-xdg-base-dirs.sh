#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

#export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME'/.local/share'}
    # Single dir where app should write user-specific data
#export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME'/.config'}
    # Single dir where app should write user-specific config
#export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME'/.cache'}
    # Single dir where app should write user-specific non-essential data
#export XDG_DATA_DIRS=${XDG_DATA_DIRS:-'/usr/local/share/:/usr/share/'}
    # Extra dirs where to search user-specific data
    # Preference-ordered set of dirs seperated with a colon ':'.
#export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:-'/etc/xdg'}
    # Extra dirs where to search user-specific config
    # Preference-ordered set of dirs seperated with a colon ':'.

# $XDG_RUNTIME_DIR should be set by the system. Its access mode MUST be 0700


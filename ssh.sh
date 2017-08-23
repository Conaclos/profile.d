#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

test -r "$XDG_RUNTIME_DIR"'/ssh-agent.socket' &&
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"'/ssh-agent.socket'


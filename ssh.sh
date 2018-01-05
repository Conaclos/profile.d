#
# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).
#

test -r "$XDG_RUNTIME_DIR/ssh-agent.socket" &&
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


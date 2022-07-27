
We aim to provide a set of scripts to set the user shell environment.

The scripts are

- built over conventions for an easy setup
- POSIX-compliant : they run on bash, dash, zsh, and more.
- XDG-compliant : they follow the [XDG base dir specification][basedir] and set
  the user directories

# Setup

Create the directory `/etc/profile.d`.

```sh
mkdir /etc/profile.d
```

Copy all the scripts from this repository in `/etc/profilei.d`.

Finally, add the next lines in the file `/etc/profile`.

```sh
if test -d '/etc/profile.d/'; then
    for f in /etc/profile.d/*.sh; do
        if test -r "$f"; then
          . "$f"
        fi
    done
    unset f
fi
```

# Configuration

## ls utility colors

Create the file `${XDG_CONFIG_HOME:-$HOME'/.config'}/dir_colors` and set
your own configuration. See the `dir_colors` man page for more details.

Alternatively, you can use an existing configuration, such as
 [solarized theme][dircolors-solarized].

Note that some projects prefer `dircolors` instead of `dir_colors`.

To enable colors use the `--color=auto` on `ls` and related commands.

## User locales

Create the file `${XDG_CONFIG_HOME:-$HOME'/.config'}/locale.conf`.

The set of availables are listed on the [ArchLinux wiki][localevars]

A simple example :

```ini
LANG=en_US.UTF-8
LC_COLLATE=C
LC_TIME=en_DK.UTF-8
```

## User profiles and programs

Create the folder `${XDG_CONFIG_HOME:-$HOME'/.config'}/profile.d`.
Every file in this directory with the extension `.sh` are sourced.

For instance, you can create a file `programs.sh` and export some of the next
variables:

- `BROWSER`: path to a web browser.
- `EDITOR`: path to a lightweight editor for text file editing. e.g. nano
- `PAGER`: path to a text file reader. e.g. less
- `VISUAL`: path to an editor for text file editing. e.g. vim, emacs

If not set, `EDITOR` is set to the value of `VISUAL`.

If not set, `PAGER` is set in the next priority order: `most`, `less`, `more`.

A simple example :

```sh
export PAGER=less
export VISUAL=vim
```

## XDG base dirs

You can directly modify the XDG base directories in
 `/etc/profile.d/10-xdg-base-dirs.sh`.

## XDG user dirs

Just follow the [XDG user dirs specification][userdirs].

A more partical tutorial is available on the [ArchLinux wiki][userdirs-arch].

# Features

## Less

Prevent less to write a less history at the home user directory.

## SSH

If the SSH agent is running then the needed environment variable in order to
 reach it is exported. This is useful for commands such as `ssh-add`.

## User path

If the user is in the administrator group `wheel` then the directory
 `$HOME/.local/bin` is added to the `PATH` variable.

## Xorg server

THe file `$HOME/.Xauthority` is moved to `$XDG_RUNTIME_DIR/Xauthority`


[basedir]:
    https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
    "XDG base dir specification"
[dircolors-solarized]:
    https://github.com/seebi/dircolors-solarized
    "dircolors solarized theme"
[localevars]:
    https://wiki.archlinux.org/index.php/locale#Variables
    "Arch wiki - Locale variables"
[userdirs]:
    https://freedesktop.org/wiki/Software/xdg-user-dirs/
    "XDG user dirs specification" 
[userdirs-arch]:
    https://wiki.archlinux.org/index.php/XDG_user_directories
    "Arch wiki - XDG user directories"


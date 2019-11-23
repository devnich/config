# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# --------------------------------------------
# Local customizations
# --------------------------------------------

# Editor
export EDITOR="emacs"
export TERM=xterm-256color

# Turn off xdebug warning for Composer
export COMPOSER_DISABLE_XDEBUG_WARN=1

export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH=/home/gilgamesh/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

# Ripgrep search flags
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# Allow use of Chrome devtools in Slack app
export SLACK_DEVELOPER_MENU=true

# Moved from .bashrc
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gilgamesh/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gilgamesh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gilgamesh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gilgamesh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# explicitly set Pidgin security variable, cf.
# https://sourceforge.net/p/sipe/wiki/Frequently%20Asked%20Questions/#after-upgrading-to-nss-3131-or-newerwzxhzdk14wzxhzdk18insert-your-favorite-linux-distribution-herewzxhzdk19-xxxwzxhzdk15windows-pidgin-2107wzxhzdk16mac-os-x-1085-109wzxhzdk17-login-fails-with-read-error
#export NSS_SSL_CBC_RANDOM_IV=0

# Oracle SQL*Plus settings
# export PATH="$HOME/bin/instantclient_18_3:$PATH"
# export LD_LIBRARY_PATH=/home/gilgamesh/bin/instantclient_18_3
# export NLS_LANG=AMERICAN_AMERICA.UTF8

# Pin Java version for Bedework development
# export JAVA_HOME=/home/gilgamesh/jdk1.8.0_45
# export JAVA_HOME=/home/gilgamesh/jdk1.7.0_71

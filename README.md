Config
======

This is a simple configuration repository intended for use when configuring new
machines, for example on Amazon AWS. It assumes that the configuring user has
admin privileges (ie. the user can use the sudo command).

Config installs git, configures zsh with syntax-highlighting and a custom theme,
and configures vim.

To begin configuration, use

    curl -L https://raw.github.com/JayThomason/config/master/begin.sh | sudo bash

As of right now, config only explicitly supports Ubuntu, although I will look
into adding support for other OSes in the future. Additionally, it is not
self-contained and it requires network access.

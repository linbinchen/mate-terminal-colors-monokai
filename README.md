Monokai Colorscheme for MATE Terminal
========================================

Scripts for setting the Monokai color set with MATE Terminal. To get nicely
colored directory listings, you will also need to set up a dircolors monokai
color theme (TODO).

The scripts are from
[mate-terminal-colors-solarized](https://github.com/NeuralSandwich/mate-terminal-colors-solarized)
The colors are from
[gnome-terminal-colors-monokai](https://github.com/derrickdominic/gnome-terminal-colors-monokai)

Thank you guys:
* Derrick Dominic
* Sean Jones ( neuralsandwich@gmail.com)

Installation and usage
----------------------

To be able to uninstall, we highly recommend that you create a new MATE
Terminal profile, using the menus in MATE Terminal.

You need the `dconf` command (if you run a recent MATE version). With Ubuntu,
this can be installed by running

    $ sudo apt-get install dconf-cli

Then clone the repository and you can run the installation script:

    $ git clone https://github.com/linbinchen/mate-terminal-colors-monokai.git
    $ cd mate-terminal-colors-monokai
    $ ./install.sh

And just follow the instructions.

Uninstall
---------

Change to another profile in MATE Terminal, then remove the Monokai profile
by running:

### MATE 1.6 or lower

    $ rm -r ~/.gconf/apps/mate-terminal/profiles/Monokai/
    $ gconftool-2 --recursive-unset /apps/mate-terminal

### MATE 1.6 or higher

Be sure to have the dconf-cli package installed and do:

    $ dconf reset -f /org/mate/terminal/profiles/PROFILE_ID"

Replace PROFILE_ID by your profile ID (you can get it in your profile
configuration in mate-terminal).

Themes
------

Each theme has is own folder in the `colors` dir. It contains the following
files:

  * bd_color: bold color
  * bg_color: background color
  * fg_color: foreground color
  * palette: list of colors for all standard color codes.

No additional configuration is needed to add a theme, the installation script
just lists at launch the children folders in the `colors` dir.

FAQ
===

Colors in VIM
------------------------------------

Use the vim colorscheme [here](https://github.com/linbinchen/vim-monokai-color)
should perfactly match.

The install ran without error, but nothing happened.
----------------------------------------------------

First, ensure you are using the profile you installed the solarized
color scheme to.

Second, close all open MATE terminals and reopen them.

If this still doesn't work, please [file a bug report].

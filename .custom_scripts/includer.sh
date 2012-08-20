#!/bin/bash

SCRIPT_ROOT=$HOME/.custom_scripts

BASH_LIBS=$SCRIPT_ROOT/libs
BASH_UTILS=$SCRIPT_ROOT/utils

# Global Export scripts
source $SCRIPT_ROOT/ansi_color

#Include Clock
source $BASH_UTILS/clock.sh

#Color Utility Functions
source $BASH_LIBS/colors.sh


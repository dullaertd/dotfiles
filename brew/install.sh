#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

brew bundle --file=$(dirname "$0")/Brewfile

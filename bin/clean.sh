#!/usr/bin/env bash

# Colour code definitions
WHTIE="\033[0m"
RED='\033[1;31m'
GREEN='\033[1;32m'

if test ! $(which brew); then
  printf "${YELLOW}Homebrew already uninstalled. Skipping...${WHITE}\n\n"
else
  printf "\n${GREEN}Uninstalling Homebrew...${WHITE}\n\n"
  # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
fi

# TODO: Test to see if this works, ensure correct uninstallation order (I think Xcode Command Line Tools should be last)
if test ! $(xcode-select -p); then
  printf "\n${YELLOW}Xcode Command Line Tools already uninstalled. Skipping...${WHITE}\n\n"
else
  printf "\n${GREEN}Uninstalling Xcode Command Line Tools...${WHITE}\n\n"
  # rm -rf $(xcode-select -p)
fi

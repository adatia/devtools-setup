#!/usr/bin/env bash

# Colour code definitions
WHTIE="\033[0m"
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'

# TODO: Test to see if this works
if test ! $(xcode-select -p); then
  printf "\n${GREEN}Installing Xcode Command Line Tools...${WHITE}\n\n"
  # xcode-select --install
else
  printf "\n${YELLOW}Xcode Command Line Tools already installed. Skipping...${WHITE}\n\n"
fi

if test ! $(which brew); then
  printf "${GREEN}Installing Homebrew...${WHITE}\n\n"
  # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  printf "${YELLOW}Homebrew already installed. Skipping...${WHITE}\n\n"
fi

printf "${BLUE}Beginning installation of desktop applications.${WHITE}\n\n"


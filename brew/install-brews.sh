#!/bin/bash

# Load JSON
BREW_JSON=$(cat brew-packages.json)

# Install brew packages
echo "$BREW_JSON" | jq -r '.brew[]' | xargs brew install

# Install casks
echo "$BREW_JSON" | jq -r '.cask[]' | xargs brew install --cask

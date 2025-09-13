#!/bin/bash

BREW_JSON=$(cat brew-packages.json)

# Tap repos
echo "$BREW_JSON" | jq -r '.tap[]' | xargs -n1 brew tap

# Install regular formulas
echo "$BREW_JSON" | jq -r '.brew[]' | xargs brew install

# Install regular casks
echo "$BREW_JSON" | jq -r '.cask[]' | xargs brew install --cask

# Install tap casks
echo "$BREW_JSON" | jq -r '.tap_cask[]' | xargs brew install --cask

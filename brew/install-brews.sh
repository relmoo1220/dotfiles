#!/bin/bash

BREW_JSON=$(cat "$(dirname "$0")/brew-packages.json")
LOG_FILE="$(dirname "$0")/install-$(date +%Y%m%d-%H%M%S).log"

SUCCEEDED=()
FAILED=()

log() {
  echo "$@" | tee -a "$LOG_FILE"
}

# Run one install command per item and record the result
install_items() {
  local label="$1"
  local cmd="$2"
  local item

  while IFS= read -r item; do
    [ -z "$item" ] && continue
    log ">> [$label] $item"
    if $cmd "$item" >>"$LOG_FILE" 2>&1; then
      SUCCEEDED+=("$label: $item")
      log "   OK"
    else
      FAILED+=("$label: $item")
      log "   FAILED (see $LOG_FILE)"
    fi
  done < <(echo "$BREW_JSON" | jq -r ".$label[]")
}

log "Started $(date)"

install_items tap "brew tap"
install_items brew "brew install"
install_items cask "brew install --cask"
install_items tap_cask "brew install --cask"

log ""
log "==== Summary ===="
log "Succeeded: ${#SUCCEEDED[@]}"
for s in "${SUCCEEDED[@]}"; do log "  + $s"; done
log "Failed: ${#FAILED[@]}"
for f in "${FAILED[@]}"; do log "  - $f"; done
log "Finished $(date)"

[ ${#FAILED[@]} -eq 0 ]

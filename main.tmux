#!/bin/bash

TS_HOME="$( command cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$TS_HOME/scripts/helpers.sh"

TS_PREFIX="$(tmux display-message -p "#{prefix}")"
TS_DELAY="$(tmux_option_or_fallback "@transient-status-delay" "0.5")"
TS_STALL="$(tmux_option_or_fallback "@transient-status-stall" "2.5")"

# fall-back to C-b unless user arks oherwise
if [ "$(tmux_option "@transient-status-fallback")" != "off" ]; then
  case "$TS_PREFIX" in
    ""|None|none)
      TS_PREFIX="C-b"
      ;;
    *)
      ;;
  esac
fi

tmux set -g prefix None
tmux bind -n "$TS_PREFIX" run -b "$TS_HOME/scripts/status.sh $TS_PREFIX $TS_DELAY $TS_STALL"

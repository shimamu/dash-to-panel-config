#!/bin/bash

# Generate a timestamped filename to avoid overwriting the dump file
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
DUMP_FILE="dash-to-panel-$TIMESTAMP.conf"

# Dump the current dconf settings for dash-to-panel
dconf dump /org/gnome/shell/extensions/dash-to-panel/ > "$DUMP_FILE"

# Load the predefined configuration from the repository
dconf load /org/gnome/shell/extensions/dash-to-panel/ < dash-to-panel.conf


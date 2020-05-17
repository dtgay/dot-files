#!/usr/bin/env sh

# PURPOSE:
# Edits today's journal file and commits changes to the repo.
#
# REQUIREMENTS:
# Vim must be installed.
#
# USAGE:
# ./journal-today.sh

# abort on errors
set -e

journal_dir="~/Documents/Notes/journal"
date=$(date +%F)
file="$journal_dir"/"$date"

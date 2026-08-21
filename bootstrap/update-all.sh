#!/bin/bash
set -e
echo "Updating all submodules to latest on their tracked branches..."
git submodule update --remote --merge
git add .
git commit -m "chore: auto-update all submodules to latest" || echo "No changes to commit"
git push

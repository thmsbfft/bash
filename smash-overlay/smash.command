#!/bin/bash
cd "$(dirname "$0")"
for filename in original/*; do
    echo "Starting..."
    composite -compose atop overlay.png $filename "composed/"$(basename $filename)
    echo "Done."
done
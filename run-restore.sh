#!/bin/bash

latest_folder=$(ls -dt ~/Library/Application\ Support/JetBrains/Rider* | head -1)
echo "Restoring to $latest_folder"

rsync -av --exclude='.*' ./ "${latest_folder}/"

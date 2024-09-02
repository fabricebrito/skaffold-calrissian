#!/bin/bash

set -x
# Define the directory where the repository should be cloned
REPO_DIR="calrissian"

# Check if the repository directory already exists
if [ ! -d "$REPO_DIR" ]; then
  echo "Cloning the repository..."
  git clone https://github.com/fabricebrito/calrissian.git "$REPO_DIR"
  cd "$REPO_DIR"
  git checkout calrissian-172
else
  echo "Repository already cloned. Skipping clone."
fi
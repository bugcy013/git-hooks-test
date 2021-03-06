#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# this command creates symlink to our pre-commit script
ln -s ../../hooks/pre-commit.bash $GIT_DIR/hooks/pre-commit
ln -s ../../hooks/post-commit.bash $GIT_DIR/hooks/post-commit
echo "Done!"

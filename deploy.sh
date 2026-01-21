#!/bin/bash

# Default commit message
MESSAGE=${1:-"Update website content"}

echo "🚀 Deploying changes to GitHub..."

# Add all changes
git add .

# Commit with message
git commit -m "$MESSAGE"

# Push to origin (assuming main/master branch)
# We'll detect the current branch automatically
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push origin "$CURRENT_BRANCH"

echo "✅ Changes pushed to GitHub on branch: $CURRENT_BRANCH"
echo "🌐 It may take 1-2 minutes for GitHub Pages to reflect the changes."

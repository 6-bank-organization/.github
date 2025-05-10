#!/bin/bash

# Usage: ./init-clean-repo.sh <repo-name>
REPO_NAME=$1

if [ -z "$REPO_NAME" ]; then
  echo "Usage: $0 <repo-name>"
  exit 1
fi

mkdir -p "$REPO_NAME"/{src,docs,.github/ISSUE_TEMPLATE}
touch "$REPO_NAME"/README.md
touch "$REPO_NAME"/.gitignore
touch "$REPO_NAME"/LICENSE
touch "$REPO_NAME"/.github/PULL_REQUEST_TEMPLATE.md
touch "$REPO_NAME"/.github/ISSUE_TEMPLATE/bug_report.yml
touch "$REPO_NAME"/.github/ISSUE_TEMPLATE/feature_request.yml
touch "$REPO_NAME"/.github/ISSUE_TEMPLATE/docs_update.yml
touch "$REPO_NAME"/.github/CODE_OF_CONDUCT.md

echo "✅ Initialized clean repository structure in ./$REPO_NAME"
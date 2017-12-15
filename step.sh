#!/bin/bash
set -ex

# Ensure Microsoft AppCenter CLI installed
if hash appcenter 2>/dev/null; then
  echo "Microsoft AppCenter CLI already installed."
else
  echo "Microsoft AppCenter CLI is not installed. Installing..."
  npm install -g appcenter-cli
fi

envman add --key BITRISE_DSYM_PATH

appcenter crashes upload-symbols -s $dsym_path -a $app_id --token $api_token --quiet

exit 0
#!/bin/bash

set -e

# Validate the number of arguments
if [ "$#" -ne 1 ]; then
  echo "Usage: ./create_gcs_bucket.sh <bucket_name>"
  exit 1
fi

# Set the variable
BUCKET_NAME=$1

# Create the bucket
gsutil mb gs://${BUCKET_NAME}

echo "Google Cloud Storage bucket '${BUCKET_NAME}' has been created."

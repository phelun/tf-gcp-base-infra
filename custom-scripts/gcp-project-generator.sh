#!/bin/bash

set -e

# Validate the number of arguments
if [ "$#" -ne 3 ]; then
  echo "Usage: ./create_gcp_project.sh <project_id> <project_display_name> <billing_account_id>"
  exit 1
fi

# Set the variables
PROJECT_ID=$1
PROJECT_DISPLAY_NAME=$2
BILLING_ACCOUNT_ID=$3

# Create the project
gcloud projects create ${PROJECT_ID} --name="${PROJECT_DISPLAY_NAME}"

# Link the project to the billing account
gcloud beta billing projects link ${PROJECT_ID} --billing-account=${BILLING_ACCOUNT_ID}

echo "Google Cloud Project '${PROJECT_ID}' with display name '${PROJECT_DISPLAY_NAME}' has been created and linked to billing account '${BILLING_ACCOUNT_ID}'."

#!/bin/bash

# Variables
PROJECT_ID="635793351475"
REPO_NAME="dm-poc-development-image-reg"

# # Authenticate with gcloud
# gcloud auth login

# # Set the current project
# gcloud config set project "$PROJECT_ID"

# Enable the Container Registry API
gcloud services enable containerregistry.googleapis.com

# Create the repository
gcloud artifacts repositories create "$REPO_NAME" \
  --repository-format=docker \
  --location=us \
  --description="Your repository description" \
  --async

# Set repository IAM policy to allow public access
gcloud artifacts repositories add-iam-policy-binding "$REPO_NAME" \
  --location=us \
  --member="allUsers" \
  --role="roles/artifactregistry.reader"

# Print the repository URL
REPO_URL="https://gcr.io/$PROJECT_ID/$REPO_NAME"
echo "Docker repository created with public access: $REPO_URL"

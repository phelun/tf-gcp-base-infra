#!/bin/bash 
gcloud components install gke-gcloud-auth-plugin
gcloud container clusters create dm-poc-cluster --zone europe-west1-d --num-nodes 1
gcloud container clusters delete dm-poc-cluster --zone europe-west1-d --num-nodes 1
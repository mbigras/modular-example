#!/usr/bin/env bash
# Vars loads environment variables.

export GOOGLE_CLOUD_PROJECT=$(gcloud config get-value project)
export TF_VAR_project=$GOOGLE_CLOUD_PROJECT

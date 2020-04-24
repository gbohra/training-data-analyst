#!/bin/bash
#bash ../build_container.sh
echo "test push"
PROJECT_ID=$(gcloud config config-helper --format "value(configuration.properties.core.project)")
docker run -t gcr.io/${PROJECT_ID}/babyweight-pipeline-bqtocsv:latest \
       --project ${PROJECT_ID} --mode local --bucket ${PROJECT_ID}-kfpdemo


#!/bin/bash

# CHANGE
CLOUDRUN_URL="https://kfpdemo-pq4ynj57hq-uc.a.run.app"


# test cloud run
CLOUDRUN_URL="https://kfpdemo-pq4ynj57hq-uc.a.run.app"
echo "Invoking ${CLOUDRUN_URL}"
curl \
   --header "Authorization: Bearer $(gcloud auth print-identity-token)" \
   --header "Content-Type: application/json" \
   --request POST \
   --data '{"bucket":"ma-poc-automation_cloudbuild-1","filename":"babyweight/preproc/train_something"}' \
   ${CLOUDRUN_URL}


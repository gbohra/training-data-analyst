#!/bin/bash

# CHANGE
PROJECT=$(gcloud config get-value project)
BUCKET="${PROJECT}-kfpdemo"

# test cloud function
echo "Creating new file in gs://${BUCKET}"
gsutil cp gs://${BUCKET}/babyweight/preproc/train_2000.csv-00002-* \
          gs://${BUCKET}/babyweight/preproc/train_20200207.csv



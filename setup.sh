#!/bin/bash

echo " -------------"
echo "| GCLOUD INFO |"
echo " -------------"
gcloud info

echo " ------------------------"
echo "| KUBECTL CLIENT VERSION |"
echo " ------------------------"
kubectl version --client
echo ""

echo " ---------------------"
echo "| HELM CLIENT VERSION |"
echo " ---------------------"
helm version --client
echo ""

echo " ----------------"
echo "| AUTHENTICATE  |"
echo " ----------------"
export GOOGLE_APPLICATION_CREDENTIALS=/license.json
gcloud auth activate-service-account --key-file=/license.json
echo ""

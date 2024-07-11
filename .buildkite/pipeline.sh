#!/bin/bash

# Source the services.sh file
source C:\\buildkite-agent\\builds\\RTC-DLLA48-1\\rtctek\\deployment-pipeline\\.buildkite\\services.sh

# Example usage
service_name="gunjan"
image=$(get_service_details "$service_name" "image")
region=$(get_service_details "$service_name" "region")
if [[ -z "$image" || -z "$region" ]]; then
    echo "Error: Unable to fetch details for service '$service_name'."
    exit 1
fi
echo "Service: $service_name"
echo "Image: $image"
echo "Region: $region"

# You can now use these variables in your deployment logic
# For example, if you're using Helm to deploy:
# helm upgrade --install my-app ./helm-chart --namespace $region --set image.repository=$image

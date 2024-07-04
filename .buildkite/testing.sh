#!/bin/bash

get_service_details() {
    local service_name=$1
    local detail=$2
    jq -r --arg service "$service_name" --arg detail "$detail" '.[$service][$detail]' $json_file
}

json_file="C:\\buildkite-agent\\builds\\RTC-DLLA48-1\\rtctek\\deployment-pipeline\\.buildkite\\services.json"

echo "jq version"
jq --version

image=$(get_service_details "gunjan" "image")
region=$(get_service_details "nitin" "region")

echo "Image: $image"
echo "Region: $region"
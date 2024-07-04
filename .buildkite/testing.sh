#!/bin/bash

get_service_details() {
    local service_name=$1
    local detail=$2
    jq -r --arg service "$service_name" --arg detail "$detail" '.[$service][$detail]' services.json
}


image=$(get_service_details "gunjan" "image")
region=$(get_service_details "nitin" "region")

echo "Image: $image"
echo "Region: $region"
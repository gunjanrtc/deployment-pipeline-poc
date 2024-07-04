#!/bin/bash

# Declare associative arrays
declare -A gunjan=(
    ["image"]="gunjan:latest"
    ["region"]="us-west-2"
)

declare -A service2=(
    ["image"]="service2-image:latest"
    ["region"]="us-east-1"
)

declare -A service3=(
    ["image"]="service3-image:latest"
    ["region"]="eu-central-1"
)

# Declare a main associative array to map service names to nested arrays
declare -A services_map=(
    ["service1"]="service1"
    ["service2"]="service2"
    ["service3"]="service3"
)

# Function to get service details from associative arrays
get_service_details() {
    local service_name=$1
    local detail=$2
    declare -n service="${services_map[$service_name]}"
    echo "${service[$detail]}"
}

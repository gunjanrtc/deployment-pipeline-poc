#!/bin/bash

# Declare associative arrays
declare -A gunjan=(
    ["image"]="gunjan:latest"
    ["region"]="us-west-2"
)

# Declare a main associative array to map service names to nested arrays
declare -A services_map=(
    ["gunjan"]="gunjan"
)

# Function to get service details from associative arrays
get_service_details() {
    local service_name=$1
    local detail=$2
    declare -n service="${services_map[$service_name]}"
    echo "${service[$detail]}"
}


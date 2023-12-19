#!/bin/bash

COMPOSE_FILE=docker-compose.yml

up() {
    echo "Starting Docker Compose..."
    docker-compose -f $COMPOSE_FILE up
}

loadtest() {
    echo "Verifying api's health check..."
    while true; do
        content=$(curl -sSf "http://localhost:3333/health")
        if [[ "$content" == "Healthy" ]]; then
            echo "API is healthy."
            break
        else
            echo "API is not healthy yet. Retrying in 5 seconds..."
            sleep 5
        fi
    done
    echo "Starting Load Test..."
    docker-compose -f $COMPOSE_FILE run ecommerce-k6-load-test run //scripts//script.js
}

down() {
    echo "Stopping Docker Compose..."
    docker-compose -f $COMPOSE_FILE down --volumes --rmi all
}

case "$1" in
    up)
        up
        ;;
    loadtest)
        loadtest
        ;;        
    down)
        down
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac

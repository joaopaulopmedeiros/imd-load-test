#!/bin/bash

COMPOSE_FILE=docker-compose.yml

up() {
    echo "Starting Docker Compose..."
    docker-compose -f $COMPOSE_FILE up
}

down() {
    echo "Stopping Docker Compose..."
    docker-compose -f $COMPOSE_FILE down --volumes --rmi all
}

case "$1" in
    up)
        up
        ;;
    down)
        down
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac

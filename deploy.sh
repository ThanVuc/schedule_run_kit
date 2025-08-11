#!/bin/bash

# Exit if any command fails
set -e

cd /home/schedule
# Arguments
IMAGE_NAME="$1"
SERVICE_NAME="$2"

if [ -z "$IMAGE_NAME" ] || [ -z "$SERVICE_NAME" ]; then
  echo "Usage: ./deploy.sh <image_name> <service_name>"
  exit 1
fi

echo "🔄 Pulling latest image: $IMAGE_NAME..."
docker pull "$IMAGE_NAME"

echo "🛑 Stopping current container: $SERVICE_NAME..."
docker compose stop "$SERVICE_NAME"

echo "🧹 Removing old image: $IMAGE_NAME..."
docker image rm "$IMAGE_NAME" || true

echo "🚀 Starting service $SERVICE_NAME with updated image..."
docker compose up -d --no-deps --build "$SERVICE_NAME"

echo "🧽 Cleaning up dangling images and containers..."
docker image prune -f
docker container prune -f

echo "✅ Done."

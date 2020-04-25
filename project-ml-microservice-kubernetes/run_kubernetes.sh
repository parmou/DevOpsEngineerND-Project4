#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=parveshmourya/udacity-microservice-p4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microserive-p4-dev --image=parveshmourya/udacity-microservice-p4 --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-microserive-p4-dev --port=8000 --target-port=80

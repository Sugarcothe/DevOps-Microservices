#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath=val12012/ml-housing-flask:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-housing-flask --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-housing-flask-84b9d86cf8-292gu --address 0.0.0.0 8000:80


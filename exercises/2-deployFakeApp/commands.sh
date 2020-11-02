#!/bin/bash

# Now let's deploy the application
# Check the folder testApp/main. There's a single app that simples displays a string using the browser that can be acessible using http://localhost:8080/api/fakeapp
# To run an application in a container you first need to containerize it, create an image of it and send it to the docker registry
# To do that I created a Dockerfile in testApp/main that allows to declare a set of instructions that can be used to create the Docker image
# Open that file and check the it. it's rather simple and I tried to documented it.
# For more info about it check https://docs.docker.com/engine/reference/builder/
# Run the following command to create the Docker image















# Note that you need to provide the deployment name, the app image location (url of image)
kubectl create deployment testApp --image=link/image-name:v1

# This will:
# - search for a suitable node to run the application
# - schedule the application to run on that Node
# - configure the cluster to reschudle the instance on a new Node when needed

# To list the deployments do
kubectl get deployments

# you'll see one deployment is running a single instance of the test App
# That application is running inside a Docker container on your node

# Pods running inside kubernetes are running on a private, isolated network.
# By default they are visible from other pods and services within the same kuberentes cluster, but not outside that network
# When we type kubectl commands we're interacting with an API endpoint to communicate to the application
# We'll see how to expose the applications outside the kuberentes cluster later on

exec and curl path
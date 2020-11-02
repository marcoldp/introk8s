#!/bin/bash

# Check the minikube is already installed. To check is installation
minikube version

# Start the k8s cluster
minikube start

# The k8s is running in your machine and minikube will create a cluster using the selected hypervisor, docker by default
# If you now check docker you'll see the minikube docker container running
docker ps

# Now to interact with the cluster we can use the kubectl
# By running the folling command you'll be abble to check the versions on both the client - kubectl - and the master - kubernetes version in the master
kubectl version

# For more info about the cluster you can run 
kubectl cluster-info

# Now you can also check the running nodes in the cluster
# It will display all the nodes that can be used to host the applications
kubectl get nodes

# Check that we have 1 running node which status is ready
# Kubernetes choses where to deploy if more then 1 are available based on available resources

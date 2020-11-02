#!/bin/bash
# This script allows to clean all the confs executed during our tests 
kubectl delete service fake-app-service
kubectl delete deployment fake-app-deployment
minikube stop
minikube delete && docker stop $(docker ps -aq)
rm -rf ~/.minikube && sudo rm -rf /usr/local/bin/minikube
echo "Note! This script doesn't unnistall docker. Check the official pages if you want to do it :)"
echo "Hope you enjoyed the workshop! Have a nice day ;)"
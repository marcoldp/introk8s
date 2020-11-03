# introk8s
This workshop provides a basic walkthrough of the basics of kubernetes. 

Based on the tutorial on the [official kubernetes pages](https://kubernetes.io/docs/tutorials/kubernetes-basics/) 

<b> Requirements: 

* Machine with Linux or MacOS with git installed :

    Tips to install:

        sudo apt install git-all

        git config --global user.name "John Doe"

        git config --global user.email johndoe@example.com


It is divided in 6 exercises:

* Create a K8s cluster

* Deploy an example application

* Explore your app

* Expose your app publicly

* Scale up your app

* Update your app

How to use:

Using the Makefile you can check the targets available by using 'make help' or simply 'make'

1. 'make dockerInstall' to install docker on the machine, if not already installed
2. 'make minikubeInstall' to install minikube and allow to create a local kubernetes cluster

Important Links:
Docker
DockerHub
Kubernetes
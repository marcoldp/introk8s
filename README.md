# introk8s
This workshop provides a basic walkthrough of the basics of kubernetes. 

Based on the tutorial on the [official kubernetes pages](https://kubernetes.io/docs/tutorials/kubernetes-basics/) 
I advise to do that after this workshop but try to use your own minikube for the exercises.

It is divided in 3 exercises:

* Create a K8s cluster

* Deploy an example application

* Expose your app outside the cluster

**Requirements:**

* Machine with Linux or MacOS with git installed :

    Tips to install:

        sudo apt install git-all

        git config --global user.name "John Doe"

        git config --global user.email johndoe@example.com

**How to use:**

Configure the environment using the Makefile.
Using the Makefile you can check the targets available by using 'make help' or simply 'make'

1. `make dockerInstall` to install docker on the machine, if not already installed
2. `make minikubeInstall` to install minikube and allow to create a local kubernetes cluster

Then you can go to the folder exercises/ and perform the commands there.
There's also available targets to launch those commands.
But there's no fun in doing that ;)




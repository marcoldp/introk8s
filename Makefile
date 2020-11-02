.PHONY: help
help: 
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

#--------------------CONFIG-------------------------
.PHONY: minikubeInstall
minikubeInstall: ## Install Minikube binary on local Machine
	./config/minikubeInstall.sh

.PHONY: dockerInstall
dockerInstall: ## Install and check docker installation on current machine
	./config/installDocker.sh

.PHONY: cleanEnvTest
cleanEnvTest: ## Removes all the configuration installed during the workshop
	./config/cleanEnvTest.sh

#----------------EXERCISE SOLUTIONS-------------------
.PHONY: solutionExercise1
solutionExercise1: ## Exercise 1 - Create cluster using minikube
	./exercises/1-createCluster/commands.sh

.PHONY: solutionExercise2
solutionExercise2: ## Exercise 2 - Deploy application using DockerHub registry
	./exercises/2-deployFakeApp/commands.sh

.PHONY: solutionExercise3
solutionExercise3: ## Exercise 3 - Allow to access outside the k8s cluster
	./exercises/3-accessOutsidek8sCluster/commands.sh
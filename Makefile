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

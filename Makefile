.PHONY: help
help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: minikubeInstall
minikubeInstall: ## Install Minikube binary on local Machine
	./config/minikubeInstall.sh

.PHONY: des
cleanEnv: ## Removes all the workshop test
	./config/clean.sh



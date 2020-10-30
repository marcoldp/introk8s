#! /bin/bash
# This script allows to automatically install mknikube in all available platforms

#--------------------FUNCTIONS---------------------------#
minikubeWebsite = "https://minikube.sigs.k8s.io/docs/start/" 
dockerInstallation = ""
checkInstallation(){
    if $1 | grep -q "$2"; then
        echo " Sucessfully installed"
    else
        echo " Error in installation!"
        echo " For troubleshooting please check $3"
        exit 1
    fi

}

#--------------------------------------------------------#
echo "---------------------------------------------------"
echo "-------------Minikube Installation-----------------"
echo "---------------------------------------------------"
echo "- Retriving and installing Minikube binary.."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube                            
echo "- Checking if Minikube correctly installed..."
checkInstallation "minikube version" "minikube version: v1.14.1" "$minikubeWebsite"
rm -rf minikube-darwin-amd64

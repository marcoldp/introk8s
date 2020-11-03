#!/bin/bash
# This script allows to automatically install minikube in Linux and macOS

minikubeWebsite="https://minikube.sigs.k8s.io/docs/start/" 
dockerInstallation="https://docs.docker.com/get-docker/"

#--------------------FUNCTIONS---------------------------#
checkInstallation(){
    echo "- Checking if $1 correctly installed..."
    if $2 | grep -q "$3"; then
        echo "  $1 Sucessfully installed"
    else
        echo "  Error with $1 !"
        echo "  Tip: $4"
    fi
}

installMinikube(){
    echo "- Retriving and installing Minikube binary.."
    if [ "$1" = "macOS" ]; then
        binaryName="minikube-darwin-amd64"
    elif [ "$1" = "linux" ]; then
        binaryName="minikube-linux-amd64"
    fi
    curl -LOs https://storage.googleapis.com/minikube/releases/latest/$binaryName
    sudo install $binaryName /usr/local/bin/minikube
    rm -rf $binaryName
}

#----------------------MENU------------------------------#
echo "---------------------------------------------------"
echo "-------------Minikube Installation-----------------"
echo "---------------------------------------------------"
echo ""
echo "- Please select your platform"
options=("Linux" "macOS" "Quit")
select opt in "${options[@]}"
do
    case $opt in 
        # Linux
        "Linux")
            checkInstallation "Docker" "docker ps " "CONTAINER ID" " Install docker using 'make installDocker' or try to restart machine if still problem! Troubleshooting in $dockerInstallation"
            installMinikube "linux"
            checkInstallation "minikube" "minikube version" "minikube version: v" "  Check the minikube official website for troubleshooting $minikubeWebsite"
            exit 0
        ;;
        
        # macOS
        "macOS")
            checkInstallation "Docker" "docker ps" "CONTAINER ID" " Install docker using 'make installDocker' or try to restart machine if still problem! Troubleshooting in $dockerInstallation"
            installMinikube "macOS"
            checkInstallation "minikube" "minikube version" "minikube version: v" "  Check the minikube official website for troubleshooting $minikubeWebsite"
            exit 0
        ;;
        
        # Quit
        "Quit")
        exit 0
        ;;
        
        # All other options
        *) echo "invalid option $REPLY";;
    esac
done 
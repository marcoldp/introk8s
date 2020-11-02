#!/bin/bash
# This script allows to install docker in Linux and macOS

#--------------------FUNCTIONS---------------------------#
checkInstallation(){
    echo "- Checking if $1 correctly installed..."
    if $2 | grep -q "$3"; then
        echo "  $1 already installed!"
        exit 0
    else
        echo "  Docker not detected! Installing..."
    fi
}

#----------------------MENU------------------------------#
echo "---------------------------------------------------"
echo "-------------Docker Installation-----------------"
echo "---------------------------------------------------"
echo ""
echo "- Please select your platform"
options=("Linux" "macOS" "Quit")
select opt in "${options[@]}"
do
    case $opt in 
        # Linux
        "Linux")
            checkInstallation \
                "Docker" \
                "docker ps " \
                "CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES" \
            curl -fsSL https://get.docker.com -o get-docker.sh
            sudo sh ./get-docker.sh
            sudo usermod -aG docker ${USER}
            rm get-docker.sh
            echo "  Docker installed in your machine!"
            echo "  You need to restart it so you can now use it :)"
            exit 0
        ;;
        
        # macOS
        "macOS")
            checkInstallation \
                "Docker" \
                "docker ps" \
                "CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES" \
            echo "  Dowloading Docker Destop. This can take a few minutes..."
            curl -LO https://desktop.docker.com/mac/stable/Docker.dmg
            echo "  Now you just need to double click on the double file to install it!"
            echo "  Tips: don't forget to close the terminal open and to eject the volume create"
            echo "  For more info check : https://hub.docker.com/editions/community/docker-ce-desktop-mac"
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

#!/bin/bash

#add color for text
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
plain='\033[0m'
NC='\033[0m' # No Color

cur_dir=$(pwd)
# check root
[[ $EUID -ne 0 ]] && echo -e "${RED}Fatal error: ${plain} Please run this script with root privilege \n " && exit 1

init(){

    #clear page .
    clear

    echo "+--------------------------------------------------------------------------------------+"
    echo "|                                                                                      |"
    echo "|     _____   ______ __      __      _______  _    _  _   _  _   _  ______  _          |"
    echo "|    |  __ \ |  ____|\ \    / /     |__   __|| |  | || \ | || \ | ||  ____|| |         |"
    echo "|    | |  | || |__    \ \  / /         | |   | |  | ||  \| ||  \| || |__   | |         |"
    echo "|    | |  | ||  __|    \ \/ /          | |   | |  | || .   || .   ||  __|  | |         |"
    echo "|    | |__| || |____    \  /           | |   | |__| || |\  || |\  || |____ | |____     |"
    echo "|    |_____/ |______|    \/            |_|    \____/ |_| \_||_| \_||______||______|    |"
    echo "|                                                                                      |"
    echo "+--------------------------------------------------------------------------------------+"
    echo -e "${GREEN}Please choose an option:${NC}"
    echo "+--------------------------------------------------------------------------------------+"
    echo -e "${BLUE}| 1  - Tunnel IP6 GRE + iptable"
    echo -e "${BLUE}| 2  - Tunnel IP6 GRE + gost"
    echo -e "${BLUE}| 3  - Tunnel IP6 GRE + ipv4 + iptable"
    echo -e "${BLUE}| 0  - Exit"
    echo "+--------------------------------------------------------------------------------------+"
    echo -e "\033[0m"

    read -p "Enter option number: " choice
    case $choice in
    1)
        echo "simple 1"
        ;;
    2)
        echo "simple 2"
        ;;
    0)
        echo -e "${GREEN}Exiting program...${NC}"
        exit 0
        ;;
    *)
        echo "Not valid"
        ;;
    esac
        

}




init
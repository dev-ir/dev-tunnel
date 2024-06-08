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
    echo -e "${GREEN}Please choose an option:${YELLOW}"
    echo "+--------------------------------------------------------------------------------------+"
    echo -e "$YELLOW${BLUE}|"
    echo -e "${BLUE}| 1  - Install Speedtest.net                    ( IRAN )"
    echo -e "${BLUE}| 2  - Install Monitoring                       ( IRAN )"
    echo -e "${BLUE}| 0  - Exit"
    echo -e "${BLUE}|"
    echo "+--------------------------------------------------------------------------------------+"
    echo -e "\033[0m"


}

init
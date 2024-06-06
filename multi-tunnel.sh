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
    echo "
    
        _____   ______ __      __  _______  _    _  _   _  _   _  ______  _      
        |  __ \ |  ____|\ \    / / |__   __|| |  | || \ | || \ | ||  ____|| |     
        | |  | || |__    \ \  / /     | |   | |  | ||  \| ||  \| || |__   | |     
        | |  | ||  __|    \ \/ /      | |   | |  | || . ` || . ` ||  __|  | |     
        | |__| || |____    \  /       | |   | |__| || |\  || |\  || |____ | |____ 
        |_____/ |______|    \/        |_|    \____/ |_| \_||_| \_||______||______|
                                                                          
                                                                          
    "    
}

init
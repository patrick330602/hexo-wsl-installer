#!/bin/bash
# Hexo Installer For Bash On Ubuntu On Windows 10
# By Patrick Wu
red=`tput setaf 1`
green=`tput setaf 2`
cyan=`tput setaf 6`
bold=`tput bold`
reset=`tput sgr0`
echo "${cyan}******************************************"
echo "*                                        *"
echo "*            ${bold}Hexo Installation${reset}${cyan}           *"
echo "*    ${bold}For Bash On Ubuntu On Windows 10${reset}${cyan}    *"
echo "*              ${bold}By Patrick Wu${reset}${cyan}             *"
echo "*                                        *"
echo "******************************************"
echo ""
echo "${green}This will Install:"
echo "1.Node.js"
echo "2.npm"
echo "2.n module"
echo "3.Hexo"
echo "------------------------------------------${reset}"
if ["$1" != "test" ]; then
    read -p "Do you want to continue?[y/n]: " option
else
    option="y"
fi

if [ "${option}" == "y" ]; then
    echo"${green}Installing Node.js...${reset}"
    sudo apt-get install nodejs -y
    echo"${green}Installing Node Package Manager...${reset}"
    sudo apt-get install npm -y
    echo"${green}Create a symbolic link for node...${reset}"
    sudo ln -s /usr/bin/nodejs /usr/bin/node
    echo"${green}Updating Node Package Manager...${reset}"
    sudo npm install npm -g
    echo"${green}Installing Module n...${reset}"
    sudo npm install n -g
    echo"${green}Updating Node.js to Latest Stable...${reset}"
    sudo n stable
    echo"${green}Installing Hexo...${reset}"
    sudo npm install -g hexo-cli
    echo ""
    echo "${cyan}******************************************"
    echo "You have successfully installed Hexo."
    echo "${bold}version${reset}${cyan}:\r`hexo -v`${reset}" 
else
    echo "${red}operation cancelled.${reset}"
fi

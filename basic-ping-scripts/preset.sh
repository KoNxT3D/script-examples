#!/bin/bash
# Host Ping Utility.
# KoNxT3D
# https://eviltek.net/
# chmod +x This File.
# Use: ./preset.sh
# Max Hops -m 15
# Set Hosts
host1="google.com"
host2="linux.org"
host3="github.com"

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="EvilTek Software Development"
TITLE="Host Status Tool"
MENU="Select Host:"
OPTIONS=(1 "1: "$host1
         2 "2: "$host2
         3 "3: "$host3
         4 "4: Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            tput setaf 9; echo -e "Pinging "$host1 '\n';
            tput setaf 3; ping -c 4 $host1;
                          echo $'\n';
            tput setaf 6; traceroute --resolve-hostnames -m 15 $host1;
            tput sgr0;
            ;;
        2)
            tput setaf 9; echo -e "Pinging "$host2 '\n';
            tput setaf 3; ping -c 4 $host2;
                          echo $'\n';
            tput setaf 6; traceroute --resolve-hostnames -m 15 $host2;
            tput sgr0;
            ;;
        3)
            tput setaf 9; echo -e "Pinging "$host3 '\n';
            tput setaf 3; ping -c 4 $host3;
                          echo $'\n';
            tput setaf 6; traceroute --resolve-hostnames -m 15 $host3;
            tput sgr0;
            ;;
        4)
            exit;
            ;;
esac
echo "Ping Another?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
             ./preset.sh;;
        No ) 
            clear;
            exit;;
    esac
done


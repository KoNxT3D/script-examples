#!/bin/bash
# Host Ping Utility
# KoNxT3D
# https://eviltek.net/
# chmod +x This File.
# Use: ./variable.sh

result="ping-results.txt"
clear
light_red='\e[1;91m%s\e[0m\n'
light_green='\e[1;92m%s\e[0m\n'
echo IP or Domain Name To Ping
read host
echo "Pinging: "$host "⏳" && echo $host >> $result;
ping -c 3 $host && ping -c 3 $host >> $result && echo "" >> $result;
if [ "$?" -eq 0 ]; then
  printf "$light_green" "[✨ CONNECTION AVAILABLE ✨]"
else
  printf "$light_red" "[❎ HOST DISCONNECTED ❎]"
fi
echo -e "💾 Results saved to Hping-results.txt\n";
echo "Ping Another?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
             ./variable.sh;;
        No ) 
            exit;;
    esac
done

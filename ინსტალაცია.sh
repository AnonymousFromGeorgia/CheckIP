#!/bin/bash

#პროგრამის ავტორი: გიო რგი
#https://YouTube.com/AnonymousFromGeorgia
#https://Github.com/AnonymousFromGeorgia
#https://Facebook.com/anonimaluri
#https://Twitter.com/anonimaluri
#https://anonymousfg.rivyt.com

trap 'პროგრამა ითიშება...; exit 1;' SIGINT SIGTSTP

checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;77mგთხოვთ, პროგრამა გაუშვით რუთით! (sudo bash ინსტალაცია.sh)\n\e[0m"
   exit 1
fi

}

checkroot

(trap '' SIGINT SIGTSTP && command -v figlet > /dev/null 2>&1 || { printf >&2  "\e[1;92mინსტალირდება Figlet, გთხოვთ მოიცადოთ...\n\e[0m"; apt-get update > /dev/null && apt-get -y install figlet > /dev/null || printf "\e[1;91mFiglet ვერ დაინსტალირდა.\n\e[0m"; }) & wait $!

(trap '' SIGINT SIGTSTP && command -v curl > /dev/null 2>&1 || { printf >&2  "\e[1;92mინსტალირდება Curl, გთხოვთ მოიცადოთ...\n\e[0m"; apt-get update > /dev/null && apt-get -y install curl > /dev/null || printf "\e[1;91mCurl ვერ დაინსტალირდა.\n\e[0m"; }) & wait $!

printf "\e[1;92mინსტალაცია წარმატებით დასრულდა.\n\e[0m"


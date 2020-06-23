#!/bin/bash

clear

figlet CheckIP

echo "https://github.com/AnonymousFromGeorgia/CheckIP"
echo "Coded by გიო რგი"
echo "შეამოწმე საკუთარი Public IP Address"

PS3='გთხოვთ, აირჩიეთ პარამეტრი: '
options=("შეამოწმე IP" "პროგრამის გათიშვა")
select opt in "${options[@]}"
do
    case $opt in
        "შეამოწმე IP")
            echo "შენი Public IP მისამართია:"
            curl ifconfig.me
            echo ""
            ;;
        "პროგრამის გათიშვა")
            break
            ;;
        *) echo "არასწორი პარამეტრი $REPLY";;
    esac
done

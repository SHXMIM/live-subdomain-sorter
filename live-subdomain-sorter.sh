#! /bin/bash
#AUTHOR=shxim
#variables
dom=$1
day=$(date +%A)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

#greeting
greeting ()
{
echo -e " WELCOME ${red} $USER ${reset}! .\n TODAY IS ${red} $day ${reset} .\n YOU ARE USING ${red} $SHELL ${reset} SHELL"
}
#AUTHOR
AUTHOR ()
{
  echo "${blue}        .__           .__ ${reset}"
  echo "${blue}   _____|  |__ ___  __|__| _____${reset}"
  echo "${blue}  /  ___/  |  \\  \/   /  |/     \ ${reset}"
  echo "${blue}  \___ \|   Y  \>    <|  |  Y Y  \ ${reset}"
  echo "${blue} /____  >___|  /__/\_ \__|__|_|  / ${reset}"
  echo "${blue}      \/     \/      \/        \/ ${reset}"
}
menu ()
{
  echo "1 :${yellow} PRESS NUMBER ONE TO FIND THE SUBDOMAINS OF A DOMAIN ${reset}:"
  read -p "${yellow} ENTER THE ABOVE OPTION  ${reset}: " opt
}

#case_stat
case_stat()
{
case $opt in
  1 )
  sub_dom=$(assetfinder -subs-only $dom +short)
  echo "${yellow}******************** THE SUBDOMAINS OF THE $dom ********************${reset}"
  echo "${green} $sub_dom ${reset}" |  tee  tmp_subs.txt
  echo "${magenta}********************FINISHED********************${reset}"  ;;
esac

}
#while_lop
while_lop ()
{
  while read url; do
    echo "${url#*//}" >> live_subs_sort.txt
  done < tmp_live_subs.txt
  sort -u live_subs_sort.txt > sorted_subs.txt
  rm tmp_subs.txt
  rm tmp_live_subs.txt
  rm live_subs_sort.txt
}
#main_script
AUTHOR
greeting
menu
read -p "${cyan} ENTER A DOMAIN ${reset}:" dom
case_stat
echo "${yellow}******************** THE LIVE SUBDOMAIN OD THE $dom ********************${reset}"
echo "${green}"
cat tmp_subs.txt |httprobe | tee tmp_live_subs.txt
echo "${magenta}********************FINISHED******************${reset}"
while_lop

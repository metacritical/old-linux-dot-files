#!/bin/bash
let x_cols=$(($(tput cols)-44))

while :
do
		Time=`date +%c`
		Date=`date +"%d-%m-%Y"`
		#save current screen position & attributes eith tput sc
		echo -en "$(tput sc;tput cup 0 ${x_cols};tput bold)$(tput setaf 1;tput setaf 7;tput setab 1)[$Time \033[46m$Date]\033[0m$(tput sgr0;tput rc)"
  #echo -e -n "\033[u"
		
 #Delay for 1 second
	sleep 1
done &
#restore current screen position & attributes

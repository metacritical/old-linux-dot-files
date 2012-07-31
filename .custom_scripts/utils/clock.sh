#!/bin/bash

function header_clock {
		tput cuu1
		tput sc
		let x_cols=$(tput cols)-33
		tput cup 0 ${x_cols}
		tput setaf 4 ; tput bold
		echo -n "["
		tput setaf 1
		echo -n "$(date +%c)"
		tput setaf 4 ; tput bold
		echo -n "]"
		tput rc
}

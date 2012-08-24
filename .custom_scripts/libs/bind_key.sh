#!/bin/bash

declare -A KEY

KEY=(
		[CTRL]="\C"
		[META]="\e"
		[ENTER]="\n"
    )

#string="'\"\C-i\":\"begin\C-m\"'"

key_string="\"${KEY[META]}i\":\"begin${KEY[ENTER]}\""

bind $key_string

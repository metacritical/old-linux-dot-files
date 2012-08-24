#!/bin/bash

declare -A KEY

KEY=(
		[CTRL]=\\C
		[META]=\\e
		[ENTER]=\\C-j
    )

#string="'\"\C-i\":\"begin\C-m\"'"

key_string="\"${KEY[CTRL]}-i\":\"begin${KEY[ENTER]}\""

bind $key_string

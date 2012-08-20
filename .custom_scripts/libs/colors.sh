ESCAPE="\033"   #Beginning Escpae Sequence
RESET="[0"			#Reset All Attributes (return to normal mode)
BOLDx="[1"			#Bright (Usually turns on BOLD)
DIM="[2" 			  #Dim
UNDERLINE="[4"	#Underline
BLINK="[5"			#Blink
REVERSE="[7" 		#Reverse
HIDDEN="[8"			#Hidden
STRIKED="[9"    #Striked"

#Genereic Color 
FG_BLACK="[30m"
FG_RED="[31m"
FG_REEN="[32m"
FG_YELLOW="[33m"
FG_BLUE="[34m"
FG_MAGENTA="[35m"
FG_CYAN="[36m"
FG_WHITE="[37m"	

#Background Color {bg} is one of the following
BG_BLACK="[40m"
BG_RED="[41m"
BG_GREEN="[42m"
BG_YELLOW="[43m"
BG_BLUE="[44m"	
BG_MAGENTA="[45m"
BG_CYAN="[46m"
BG_WHITE="[47m"

#Foreground Bold Characters
BOLD_BLACK="[1;30m"
BOLD_RED="[1;31m"
BOLD_GREEN="[1;32m"
BOLD_YELLOW="[1;33m"
BOLD_BLUE="[1;34m"
BOLD_MAGENTA="[1;35m"
BOLD_CYAN="[1;36m"
BOLD_WHITE="[1;37m"

#Striked Foreground color is one of the following
STRK_FG_BLACK="[9;30m"
STRK_FG_RED="[9;31m"
STRK_FG_GREEN="[9;32m"
STRK_FG_YELLOW="[9;33m"
STRK_FG_BLUE="[9;34m"
STRK_FG_MAGENTA="[9;35m"
STRK_FG_CYAN="[9;36m"
STRK_FG_WHITE="[9;37m"

#Striked background color is one of the following
STRK_BG_BLACK="[9;40m"
STRK_BG_RED="[9;41m"
STRK_BG_GREEN="[9;42m"
STRK_BG_YELLOW="[9;43m"
STRK_BG_BLUE="[9;44m"	
STRK_BG_MAGENTA="[9;45m"
STRK_BG_CYAN="[9;46m"
STRK_BG_WHITE="[9;47m"
		 
#Extra Colors in Treminal Only Accessible through tputs as linux terminal only defines 8
CUSTOM_DIR_COLOR="$ESCAPE[38;5;147m" # Equivalent to "$(tput setaf 147)"
APPLE_COLOR_LOGO="$ESCAPE[40;5;198m" # Equivalent to "$(tput setaf 198)"
GREY_BACKGROUND="$ESCAPE[40;5;198m"

#Associative array for colors :
declare -A FG BG

FG=(
		[BLACK]="$ESCAPE[38;5;000m"
		[RED]="$ESCAPE[38;5;001m"
		[GREEN]="$ESCAPE[38;5;002m"
		[YELLOW]="$ESCAPE[38;5;003m"
		[BLUE]="$ESCAPE[38;5;004m"
		[MAGENTA]="$ESCAPE[38;5;005m"
		[CYAN]="$ESCAPE[38;5;006m"
		[WHITE]="$ESCAPE[1;38;5;007m"	
		[CUSTOM_DIR_COLOR]="$ESCAPE[38;5;147m"
		[APPLE_COLOR_LOGO]="$ESCAPE[3;38;5;198m"
		[GREY_BACKGROUND]="$ESCAPE[40;5;198m"
)

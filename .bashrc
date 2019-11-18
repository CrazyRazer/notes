##USER CONFIGURATION
#fzf
source /usr/share/fzf/shell/key-bindings.bash

#topic
EMOTIONS=(anger dismay disgust boredom enthusiasm frustration hatred irritation nostalgia pride resentment self-satisfaction unhappiness annoyance confusion disillusionment envy fury hope jealousy optimism rage sadness shame worry anxiety delight excitement gratitude horror joy pessimism relief satisfaction surprise bewilderment despair embarrassment fear happiness indignation love pleasure remorse scepticism tension)
RANDOM_NUM_IN_ARR=$[$RANDOM % ${#EMOTIONS[@]}]
PROMPT_COMMAND='echo -ne "\033]0;Terminal of ${EMOTIONS[$RANDOM_NUM_IN_ARR]} | ${USER}@`hostname -s`: ${PWD}\007"'

#fortune + lolcat
fortune | lolcat -t

#the fuck
eval $(thefuck --alias)

#PS1
GREEN='\[\e[0;32m\]'
RED='\[\e[0;31m\]'
BLACK='\[\e[0;30m\]'
WHITE='\[\e[0;37m\]'

if [ "`id -u`" -eq 0 ]; then
        PS1='[`date +%H:%M:%S`]'"[${RED}\u${WHITE}@\h \W]\\$ "
else
        PS1='[`date +%H:%M:%S`]'"[${GREEN}\u${WHITE}@\h \W]\\$ "
fi

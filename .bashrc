## PERSONAL ALIASES AND FUNCTIONS ##

# make commands with space invisible to history
HISTCONTROL="ignorespace${HISTCONTROL:+:$HISTCONTROL}"

# initialize fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# initialize the fuck
eval $(thefuck --alias)

# display random window topic
EMOTIONS=(anger dismay disgust boredom enthusiasm frustration hatred irritation nostalgia pride resentment self-satisfaction unhappiness annoyance confusion disillusionment envy fury hope jealousy optimism rage sadness shame worry anxiety delight excitement gratitude horror joy pessimism relief satisfaction surprise bewilderment despair embarrassment fear happiness indignation love pleasure remorse scepticism tension)
RANDOM_NUM_IN_ARR=$[$RANDOM % ${#EMOTIONS[@]}]
PROMPT_COMMAND='echo -ne "\033]0;Terminal of ${EMOTIONS[$RANDOM_NUM_IN_ARR]} | ${USER}@`hostname -s`: ${PWD}\007"'


# root/non root PS1 coloring
GREEN='\[\e[0;32m\]'
RED='\[\e[0;31m\]'
BLACK='\[\e[0;30m\]'
WHITE='\[\e[0;37m\]'

if [ "`id -u`" -eq 0 ]; then
        PS1='[`date +%H:%M:%S`]'"[${RED}\u${WHITE}@\h \W]\\$ "
else
        PS1='[`date +%H:%M:%S`]'"[${GREEN}\u${WHITE}@\h \W]\\$ "
fi

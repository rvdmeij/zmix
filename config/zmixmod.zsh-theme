# ZMIX Modded Theme for Oh-my-ZSH
if [ $UID -eq 0 ]; then UC="009";  PCOLOR="204"; NCOLOR="red"; else UC="075"; PCOLOR="032"; NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? â†µ%{$reset_color%})"

# primary prompt
PROMPT='%{$reset_color%}$FG[$PCOLOR]%~\
$(git_prompt_info) \
$FG[$UC]%(!.#.$)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[green]%}%*%{$reset_color%}"
time=$time_enabled

# color vars
eval my_gray='$FG[216]'
eval my_orange='$FG[214]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
        RPROMPT='${time} $(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
else
        RPROMPT='${time} $my_gray%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"


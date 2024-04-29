TIME_PROMPT="%{$fg_bold[yellow]%}[ %* ]%{$reset_color%}"
PROMPT=" %(?:%{$fg_bold[green]%}%1{➜%} $TIME_PROMPT :%{$fg_bold[red]%}%1{➜%})%{$fg_bold[cyan]%}%c%{$reset_color%} "
# PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

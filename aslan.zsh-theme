local color_reset="%{$reset_color%}"
local current_dir="%{$fg[cyan]%}%c"
local dir="%{$terminfo[bold]$fg[cyan]%}%~${color_reset}"
local python_version="🐍 %{$fg[magenta]$(python3 --version 2>&1 | awk "{print \$2}")%}${color_reset}"
local git_branch="$(git_prompt_info)${color_reset}"
local arrow="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} )"
local return_code="%(?..%{$fg[red]%}%? ↵${color_reset})"

PROMPT="${dir} ${python_version} ${git_branch}%{$terminfo[bold]$fg[cyan]%}$
${arrow} ${color_reset}"
RPS1="[%*]${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg_bold[cyan]git:(%{$fg[green]%}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%1{*%}%}%{$fg[cyan]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"

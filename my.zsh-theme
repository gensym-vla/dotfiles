# -*- sh -*-
# inspired by: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/


local svn_branch='$(svn_prompt_info)%{$reset_color%}' #depends on the svn plugin
local git_branch='$(git_prompt_info)%{$reset_color%}' #depends on the git plugin
local return_code='%(?..%{$fg[red]%}%? [Err]%{$reset_color%})'
local pwd='%{$fg[white]%}in %{$fg[green]%}%~%{$reset_color%}'
local user='%{$fg[red]%}%n %{$fg[white]%}at %{$fg_bold[yellow]%}%m%{$reset_color%}'
local time='%{$fg_bold[blue]%}[%T (%D)]%{$reset_color%}'
local battery='$(battery_pct_prompt)'
RPS1="${return_code} ${battery}${time}"
PROMPT="${user} ${pwd} ${svn_branch}${git_branch}
%{$fg[green]%} %% %{$reset_color%}"


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}on git%{$reset_color%} (%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%} !"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ?"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[white]%}%{$reset_color%}on svn (%{$fg[cyan]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[magenta]%} !"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[magenta]%} ?"

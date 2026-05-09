
function get_time_day() {
    local hour=$(date +%H)
    if ((hour >= 6 && hour < 12)); then
        echo "🌅"
    elif ((hour >= 12 && hour < 18)); then
        echo "☀️"
    elif ((hour >= 18 && hour < 21)); then
        echo "🌆"
    else
        echo "🌙"
    fi
}


COLOR_USER="%{$fg_bold[cyan]%}"
COLOR_PATH="%{$fg[green]%}"
RESET="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}git[%{$fg[cyan]%}"   # Texto antes de la rama
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}]%{$reset_color%}"     # Limpia el color después
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✖️ %{$reset_color%}"       # X roja si hay cambios
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}➕ "     # + verde si está limpio

PROMPT='${COLOR_USER}%n${RESET}.to(${COLOR_PATH}%2~${RESET})::$(git_prompt_info) ($(get_time_day) )» '

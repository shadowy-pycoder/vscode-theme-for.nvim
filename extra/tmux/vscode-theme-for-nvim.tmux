#!/bin/bash
vscode_black="#2c323c"
vscode_blue="#4fc1ff"
vscode_yellow="#D7BA7D"
vscode_red="#D16969"
vscode_white="#aab2bf"
white="#cccccc"
vscode_green="#89d185"
vscode_visual_grey="#3e4452"
vscode_comment_grey="#5c6370"

get() {
    local option=$1
    local default_value=$2
    local option_value="$(tmux show-option -gqv "$option")"

    if [ -z "$option_value" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

set() {
    local option=$1
    local value=$2
    tmux set-option -gq "$option" "$value"
}

setw() {
    local option=$1
    local value=$2
    tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$white"
set "message-bg" "$vscode_black"

set "message-command-fg" "$white"
set "message-command-bg" "$vscode_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$vscode_black"
setw "window-status-bg" "$vscode_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$vscode_black"
setw "window-status-activity-fg" "$vscode_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$vscode_comment_grey"
set "window-active-style" "fg=$white"

set "pane-border-fg" "$vscode_white"
set "pane-border-bg" "$vscode_black"
set "pane-active-border-fg" "$vscode_green"
set "pane-active-border-bg" "$vscode_black"

set "display-panes-active-colour" "$vscode_yellow"
set "display-panes-colour" "$vscode_blue"

set "status-bg" "$vscode_black"
set "status-fg" "$vscode_white"

set "@prefix_highlight_fg" "$vscode_black"
set "@prefix_highlight_bg" "$vscode_green"
set "@prefix_highlight_copy_mode_attr" "fg=$vscode_black,bg=$vscode_green"
set "@prefix_highlight_output_prefix" "  "

status_widgets=$(get "@vscode_widgets")
time_format=$(get "@vscode_time_format" "%R")
date_format=$(get "@vscode_date_format" "%d/%m/%Y")

set "status-right" "#[fg=$vscode_white,bg=$vscode_black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$vscode_visual_grey,bg=$vscode_black]#[fg=$vscode_visual_grey,bg=$vscode_visual_grey]#[fg=$vscode_white, bg=$vscode_visual_grey]${status_widgets} #[fg=$vscode_green,bg=$vscode_visual_grey,nobold,nounderscore,noitalics]#[fg=$vscode_black,bg=$vscode_green,bold] #h #[fg=$vscode_green,bg=$vscode_green,bold]"
set "status-left" "#[fg=$vscode_black,bg=$vscode_green,bold] #S #{prefix_highlight}#[fg=$vscode_green,bg=$vscode_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$vscode_black,bg=$vscode_black,nobold,nounderscore,noitalics]#[fg=$vscode_white,bg=$vscode_black] #I  #W #[fg=$vscode_black,bg=$vscode_black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$vscode_black,bg=$vscode_visual_grey,nobold,nounderscore,noitalics]#[fg=$vscode_white,bg=$vscode_visual_grey,nobold] #I  #W #[fg=$vscode_visual_grey,bg=$vscode_black,nobold,nounderscore,noitalics]"


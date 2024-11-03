local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
#!/usr/bin/env bash

# ${_style_name} colors for Tmux

set -g mode-style "fg=${blue},bg=${bg}"

set -g message-style "fg=${blue},bg=${bg}"
set -g message-command-style "fg=${blue},bg=${bg}"

set -g pane-border-style "fg=${base01}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${fg},bg=${bg}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${black},bold]#{?client_prefix,#[bg=${magenta}],#[bg=${base0}]}    #S  #[nobold]#{?client_prefix,#[fg=${magenta}],#[fg=${base0}]}#{?#{==:1,#{active_window_index}},#[bg=${blue}],#[bg=${bg}]}"
set -g status-right ""

setw -g window-status-style "${none},fg=${fg},bg=${bg}"
setw -g window-status-activity-style "underscore,fg=${fg},bg=${bg}"
setw -g window-status-separator ""
setw -g window-status-format "#[fg=${fg}]#{?window_start_flag, ,} #I #W #{?#{==:1,#{e|-:#{active_window_index},#I}},, }"
setw -g window-status-current-format "#[bg=${blue}]#[fg=${black}]#{?window_start_flag,,}  #I #W  #[fg=${blue}]#[bg=${bg}]"
]],
    colors
  )
  return tmux
end

return M

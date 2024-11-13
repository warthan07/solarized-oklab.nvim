#!/usr/bin/env bash

# Solarized OKLab colors for Tmux

set -g mode-style "fg=#2483d6,bg=#0e151f"

set -g message-style "fg=#2483d6,bg=#0e151f"
set -g message-command-style "fg=#2483d6,bg=#0e151f"

set -g pane-border-style "fg=#424448"
set -g pane-active-border-style "fg=#2483d6"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#797b7f,bg=#0e151f"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#0b1119,bold]#{?client_prefix,#[bg=#c841a4],#[bg=#96989d]}    #S  #[nobold]#{?client_prefix,#[fg=#c841a4],#[fg=#96989d]}#{?#{==:1,#{active_window_index}},#[bg=#2483d6],#[bg=#0e151f]}"
set -g status-right ""

setw -g window-status-style "NONE,fg=#797b7f,bg=#0e151f"
setw -g window-status-activity-style "underscore,fg=#797b7f,bg=#0e151f"
setw -g window-status-separator ""
setw -g window-status-format "#[fg=#797b7f]#{?window_start_flag, ,} #I #W #{?#{==:1,#{e|-:#{active_window_index},#I}},, }"
setw -g window-status-current-format "#[bg=#2483d6]#[fg=#0b1119]#{?window_start_flag,,}  #I #W  #[fg=#2483d6]#[bg=#0e151f]"

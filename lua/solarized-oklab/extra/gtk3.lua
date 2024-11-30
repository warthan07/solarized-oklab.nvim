local util = require("solarized-oklab.util")

local function hex2rgb(value)
  local hex = value:gsub("#", "")

  local r = tonumber(hex:sub(1, 2), 16)
  local g = tonumber(hex:sub(3, 4), 16)
  local b = tonumber(hex:sub(5, 6), 16)

  return string.format("%s, %s, %s", r, g, b)
end

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gtk_colors = vim.deepcopy(colors)
  for k, v in pairs(colors) do
    if type(v) == "string" then
      gtk_colors["rgb_"..k] = hex2rgb(v)
    end
  end

  return util.template(
[[
/* GTK NAMED COLORS
   ----------------
   use responsibly! */
/*
widget text/foreground color */
@define-color theme_fg_color_breeze ${base0};
/*
text color for entries, views and content in general */
@define-color theme_text_color_breeze ${base0};
/*
widget base background color */
@define-color theme_bg_color_breeze ${black};
/*
text widgets and the like base background color */
@define-color theme_base_color_breeze ${black};
/*
view hover decoration color*/
@define-color theme_view_hover_decoration_color_breeze ${violet900};
/*
background color of hovering selected widgets*/
@define-color theme_hovering_selected_bg_color_breeze ${violet};
/*
foreground color of hovering selected widgets*/
@define-color theme_hovering_selected_fg_color_breeze ${base03};
/*
base background color of selections */
@define-color theme_selected_bg_color_breeze ${violet};
/*
text/foreground color of selections */
@define-color theme_selected_fg_color_breeze ${black};
/*
decoration color of views */
@define-color theme_view_active_decoration_color_breeze ${violet};
/*
base background color of insensitive selections */
@define-color insensitive_selected_bg_color_breeze rgba(${rgb_violet}, 0.35);
/*
base background color of insensitive widgets */
@define-color insensitive_bg_color_breeze ${base04};
/*
text foreground color of insensitive widgets */
@define-color insensitive_fg_color_breeze rgba(${rgb_base1}, 0.35);
/*
insensitive text widgets and the like base background color */
@define-color insensitive_base_color_breeze rgba(${rgb_base1}, 0.35);
/*
insensitive text widgets and the like base foreground color */
@define-color insensitive_base_fg_color_breeze ${base01};
/*
insensitive selected text widgets and the like base background color */
@define-color insensitive_selected_fg_color_breeze rgba(${rgb_base1}, 0.35);
/*
widget text/foreground color on backdrop windows */
@define-color theme_unfocused_fg_color_breeze ${base0};
/*
text color for entries, views and content in general on backdrop windows */
@define-color theme_unfocused_text_color_breeze ${base0};
/*
widget base background color on backdrop windows */
@define-color theme_unfocused_bg_color_breeze ${base04};
/*
text widgets and the like base background color on backdrop windows */
@define-color theme_unfocused_base_color_breeze ${black};
/*
base background color of selections on backdrop windows, alt */
@define-color theme_unfocused_selected_bg_color_alt_breeze ${magenta};
/*
base background color of selections on backdrop windows */
@define-color theme_unfocused_selected_bg_color_breeze rgba(${rgb_violet}, 0.5);
/*
text/foreground color of selections on backdrop windows */
@define-color theme_unfocused_selected_fg_color_breeze ${base0};
/*
base background color of insensitive selections on backdrop windows */
@define-color insensitive_unfocused_selected_bg_color_breeze rgba(${rgb_violet}, 0.35);
/*
text foreground color of insensitive widgets on backdrop windows*/
@define-color insensitive_unfocused_fg_color_breeze rgba(${rgb_base1}, 0.35);
/*
backdground color of insensitive widgets on backdrop windows*/
@define-color insensitive_unfocused_bg_color_breeze ${base03};
/*
text foreground color of insensitive selected widgets on backdrop windows*/
@define-color insensitive_unfocused_selected_fg_color_breeze rgba(${rgb_base1}, 0.35);
/*
view text foreground color of insensitive widgets on backdrop windows */
@define-color theme_unfocused_view_text_color_breeze rgba(${rgb_base1}, 0.35);
/*
insensitive view background color on backdrop windows */
@define-color theme_unfocused_view_bg_color_breeze ${base03};
/*
widgets main borders color */
@define-color borders_breeze ${base02};
/*
widgets main borders color on backdrop windows */
@define-color unfocused_borders_breeze ${base02};
/*
widgets main borders color insensitive */
@define-color insensitive_borders_breeze rgba(${rgb_base02}, 0.35);
/*
widgets main borders color insensitive backdrop */
@define-color unfocused_insensitive_borders_breeze rgba(${rgb_base02}, 0.35);
/*
*
* Button Colors
*
*/
@define-color theme_button_background_normal_breeze ${base04};
@define-color theme_button_decoration_hover_breeze  ${violet};
@define-color theme_button_decoration_focus_breeze  ${violet};
@define-color theme_button_foreground_normal_breeze ${base0};
@define-color theme_button_foreground_active_breeze ${black};
@define-color theme_button_background_insensitive_breeze        rgba(${rgb_base04}, 0.35);
@define-color theme_button_decoration_hover_insensitive_breeze  rgba(${rgb_violet}, 0.35);
@define-color theme_button_decoration_focus_insensitive_breeze  rgba(${rgb_violet}, 0.35);
@define-color theme_button_foreground_insensitive_breeze        rgba(${rgb_base1}, 0.35);
@define-color theme_button_foreground_active_insensitive_breeze rgba(${rgb_base1}, 0.35);
@define-color theme_button_background_backdrop_breeze        ${base04};
@define-color theme_button_decoration_hover_backdrop_breeze  ${violet};
@define-color theme_button_decoration_focus_backdrop_breeze  ${violet};
@define-color theme_button_foreground_backdrop_breeze        ${base0};
@define-color theme_button_foreground_active_backdrop_breeze ${black};
@define-color theme_button_background_backdrop_insensitive_breeze        rgba(${rgb_base04}, 0.35);
@define-color theme_button_decoration_hover_backdrop_insensitive_breeze  rgba(${rgb_violet}, 0.35);
@define-color theme_button_decoration_focus_backdrop_insensitive_breeze  rgba(${rgb_violet}, 0.35);
@define-color theme_button_foreground_backdrop_insensitive_breeze        rgba(${rgb_base1}, 0.35);
@define-color theme_button_foreground_active_backdrop_insensitive_breeze rgba(${rgb_base03}, 0.35);
/*
these are pretty self explicative */
@define-color warning_color_breeze ${yellow};
@define-color error_color_breeze   ${red};
@define-color success_color_breeze ${green};
@define-color warning_color_backdrop_breeze ${yellow};
@define-color error_color_backdrop_breeze   ${red};
@define-color success_color_backdrop_breeze ${green};
@define-color warning_color_insensitive_breeze rgba(${rgb_orange}, 0.35);
@define-color error_color_insensitive_breeze   rgba(${rgb_red}, 0.35);
@define-color success_color_insensitive_breeze rgba(${rgb_green}, 0.35);
@define-color warning_color_insensitive_backdrop_breeze rgba(${rgb_orange}, 0.35);
@define-color error_color_insensitive_backdrop_breeze   rgba(${rgb_red}, 0.35);
@define-color success_color_insensitive_backdrop_breeze rgba(${rgb_green}, 0.35);
@define-color link_color_breeze ${magenta};
@define-color link_visited_color_breeze ${violet};
/*
*
* Titlebar Colors
*
*/
@define-color theme_titlebar_background_breeze          ${base04};
@define-color theme_titlebar_foreground_breeze          ${base0};
@define-color theme_titlebar_background_light_breeze    ${base04};
@define-color theme_titlebar_foreground_backdrop_breeze ${base01};
@define-color theme_titlebar_background_backdrop_breeze ${base04};
@define-color theme_titlebar_foreground_insensitive_breeze rgba(${rgb_base1}, 0.35);
@define-color theme_titlebar_foreground_insensitive_backdrop_breeze rgba(${rgb_base01}, 0.35);
/*
* Tooltips
*/
@define-color tooltip_text_breeze ${base0};
@define-color tooltip_background_breeze ${base04};
@define-color tooltip_border_breeze ${base02};
/*
* Misc
*/
@define-color print_paper_backdrop_breeze  white;
@define-color content_view_bg_breeze ${black};
/*
 * GTK API color re-defs
 */
@define-color theme_fg_color @theme_fg_color_breeze;
@define-color theme_text_color @theme_text_color_breeze;
@define-color theme_bg_color @theme_bg_color_breeze;
@define-color theme_base_color @theme_base_color_breeze;
@define-color theme_selected_bg_color @theme_selected_bg_color_breeze;
@define-color theme_selected_fg_color @theme_selected_fg_color_breeze;
@define-color insensitive_bg_color @insensitive_bg_color_breeze;
@define-color insensitive_fg_color @insensitive_fg_color_breeze;
@define-color insensitive_base_color @insensitive_base_color_breeze;
@define-color theme_unfocused_fg_color @theme_unfocused_fg_color_breeze;
@define-color theme_unfocused_text_color @theme_unfocused_text_color_breeze;
@define-color theme_unfocused_bg_color @theme_unfocused_bg_color_breeze;
@define-color theme_unfocused_base_color @theme_unfocused_base_color_breeze;
@define-color theme_unfocused_selected_bg_color @theme_unfocused_selected_bg_color_breeze;
@define-color theme_unfocused_selected_fg_color @theme_unfocused_selected_fg_color_breeze;
@define-color unfocused_insensitive_color @unfocused_insensitive_color_breeze;
@define-color borders @borders_breeze;
@define-color unfocused_borders @unfocused_borders_breeze;
@define-color warning_color @warning_color_breeze;
@define-color error_color @error_color_breeze;
@define-color success_color @success_color_breeze;
@define-color content_view_bg @content_view_bg_breeze;
*, button:link,
button:visited {
  padding: 0;
  -GtkToolbutton-icon-spacing: 4;
  -GtkTextview-error-underline-color: @error_color_breeze;
  -GtkScrolledwindow-scrollbar-spacing: 0;
  -GtkScrolled-window-overlay-scrolling: FALSE;
  -GtkToolitemgroup-expander-size: 11;
  -GtkTreeview-expander-size: 11;
  -GtkTreeview-horizontal-separator: 4;
  -GtkWidget-text-handle-width: 20;
  -GtkWidget-text-handle-height: 20;
  -GtkDialog-button-spacing: 4;
  -GtkDialog-action-area-border: 0;
  outline-width: 0px; }

/***************
 * Base States *
 ***************/
.background {
  color: @theme_fg_color_breeze;
  background-color: @theme_bg_color_breeze; }
  .background:backdrop, label:backdrop selection.background {
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: @theme_unfocused_fg_color_breeze;
    background-color: @theme_unfocused_bg_color_breeze; }

/*
   These wildcard seems unavoidable, need to investigate.
   Wildcards are bad and troublesome, use them with care,
   or better, just don't.
   Everytime a wildcard is used a kitten dies, painfully.
*/
*:disabled, button:disabled:link,
button:disabled:visited, label:disabled selection {
  -gtk-icon-effect: dim; }

.gtkstyle-fallback {
  background-color: @theme_bg_color_breeze;
  color: @theme_fg_color_breeze; }
  .gtkstyle-fallback:hover {
    background-color: shade(@theme_bg_color_breeze,1.1);
    color: @theme_fg_color_breeze; }
  .gtkstyle-fallback:active {
    background-color: shade(@theme_bg_color_breeze,0.9);
    color: @theme_fg_color_breeze; }
  .gtkstyle-fallback:disabled, label:disabled selection.gtkstyle-fallback {
    background-color: @insensitive_fg_color_breeze;
    color: @insensitive_fg_color_breeze; }
  .gtkstyle-fallback:selected,
  headerbar.selection-mode .gtkstyle-fallback.subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited {
    background-color: @theme_selected_bg_color_breeze;
    color: @theme_selected_fg_color_breeze; }

.view text,
textview text,
.view {
  color: @theme_text_color_breeze;
  background-color: @theme_base_color_breeze; }
  .view text:backdrop,
  textview text:backdrop,
  .view:backdrop,
  label:backdrop selection.view {
    color: @theme_unfocused_text_color_breeze;
    background-color: @theme_unfocused_base_color_breeze; }
  .view text:disabled,
  textview text:disabled,
  .view:disabled,
  label:disabled selection.view {
    color: @insensitive_base_fg_color_breeze; }
  .view text:selected:focus,
  textview text:selected:focus,
  textview headerbar.selection-mode text.subtitle:focus:link,
  textview headerbar.selection-mode button:focus:link,
  textview headerbar.selection-mode button:focus:visited,
  headerbar.selection-mode textview text.subtitle:focus:link,
  headerbar.selection-mode textview button:focus:link,
  headerbar.selection-mode textview button:focus:visited,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited, .view text:selected,
  .view headerbar.selection-mode text.subtitle:link,
  .view headerbar.selection-mode button.subtitle:link,
  .view headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode .view text.subtitle:link,
  headerbar.selection-mode .view button.subtitle:link,
  headerbar.selection-mode .view button.subtitle:visited,
  textview text:selected,
  textview headerbar.selection-mode text.subtitle:link,
  textview headerbar.selection-mode button.subtitle:link,
  textview headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode textview text.subtitle:link,
  headerbar.selection-mode textview button.subtitle:link,
  headerbar.selection-mode textview button.subtitle:visited,
  textview headerbar.selection-mode headerbar text.subtitle:link,
  textview headerbar.selection-mode headerbar button.subtitle:link,
  textview headerbar.selection-mode headerbar button.subtitle:visited,
  headerbar.selection-mode headerbar textview text.subtitle:link,
  headerbar.selection-mode headerbar textview button.subtitle:link,
  headerbar.selection-mode headerbar textview button.subtitle:visited,
  .view:selected:focus,
  .view:selected,
  headerbar.selection-mode .view.subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited {
    border-radius: 1.25mm; }

textview border {
  background-color: @theme_base_color_breeze;
  background-image: image(@borders_breeze);
  background-repeat: no-repeat; }
  textview border:backdrop {
    background-color: @theme_unfocused_base_color_breeze; }
  textview border.bottom {
    background-size: 100% 1px;
    background-position: top; }
  textview border.top {
    background-size: 100% 1px;
    background-position: bottom; }
  textview border.left {
    background-size: 1px 100%;
    background-position: right; }
  textview border.right {
    background-size: 1px 100%;
    background-position: left; }

.rubberband,
rubberband,
treeview.view rubberband,
flowbox rubberband {
  border: 1px solid @theme_selected_bg_color_breeze;
  background-color: alpha(@theme_selected_bg_color_breeze,0.8); }
  .rubberband:backdrop, label:backdrop selection.rubberband,
  rubberband:backdrop,
  treeview.view rubberband:backdrop {
    border-color: @theme_unfocused_selected_bg_color_breeze;
    background-color: alpha(@theme_unfocused_selected_bg_color_breeze,0.8); }

flowbox flowboxchild {
  padding: 3px;
  border-radius: 1.25mm; }
  flowbox flowboxchild:selected,
  flowbox headerbar.selection-mode flowboxchild.subtitle:link,
  flowbox headerbar.selection-mode button.subtitle:link,
  flowbox headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode flowbox flowboxchild.subtitle:link,
  headerbar.selection-mode flowbox button.subtitle:link,
  headerbar.selection-mode flowbox button.subtitle:visited,
  flowbox headerbar.selection-mode headerbar flowboxchild.subtitle:link,
  flowbox headerbar.selection-mode headerbar button.subtitle:link,
  flowbox headerbar.selection-mode headerbar button.subtitle:visited,
  headerbar.selection-mode headerbar flowbox flowboxchild.subtitle:link,
  headerbar.selection-mode headerbar flowbox button.subtitle:link,
  headerbar.selection-mode headerbar flowbox button.subtitle:visited {
    outline-offset: 0px; }

label.separator {
  color: @theme_fg_color_breeze; }
  label.separator:backdrop, label:backdrop selection.separator {
    color: @theme_unfocused_fg_color_breeze; }

label selection {
  background-color: @theme_selected_bg_color_breeze;
  color: @theme_selected_fg_color_breeze; }

label:disabled {
  color: @insensitive_fg_color_breeze; }
  label:disabled:backdrop, label:backdrop selection:disabled {
    color: @insensitive_unfocused_fg_color_breeze; }

label:backdrop {
  color: @theme_unfocused_text_color_breeze; }

.dim-label,
headerbar .subtitle, label.separator {
  opacity: 0.5;
  text-shadow: none; }

.csd popover.background.osd, popover.background.osd, .csd popover.background.touch-selection, .csd popover.background.magnifier, popover.background.touch-selection, popover.background.magnifier, .app-notification,
.app-notification.frame,
.osd {
  color: @theme_fg_color_breeze;
  border: 1px solid @borders_breeze;
  background-color: alpha(@theme_bg_color_breeze,0.8);
  background-clip: padding-box;
  box-shadow: none;
  text-shadow: none;
  -gtk-icon-shadow: none; }
  popover.background.osd:backdrop, popover.background.touch-selection:backdrop, popover.background.magnifier:backdrop, .app-notification:backdrop, label:backdrop selection.app-notification,
  .osd:backdrop,
  label:backdrop selection.osd {
    color: @theme_unfocused_text_color_breeze;
    background-color: alpha(@theme_unfocused_bg_color_breeze,0.8);
    -gtk-icon-shadow: none; }

.sidebar row:selected, .sidebar:selected,
headerbar.selection-mode .sidebar.subtitle:link,
headerbar.selection-mode button.sidebar.subtitle:visited, row:selected, spinbutton:not(.vertical) selection:focus, spinbutton:not(.vertical) selection,
entry selection:focus,
entry selection,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited,
.view:selected:focus,
.view:selected,
headerbar.selection-mode .view.subtitle:link,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited, .view text:selected:focus,
textview text:selected:focus,
textview headerbar.selection-mode text.subtitle:focus:link,
textview headerbar.selection-mode button:focus:link,
textview headerbar.selection-mode button:focus:visited,
headerbar.selection-mode textview text.subtitle:focus:link,
headerbar.selection-mode textview button:focus:link,
headerbar.selection-mode textview button:focus:visited, .view text:selected,
.view headerbar.selection-mode text.subtitle:link,
.view headerbar.selection-mode button.subtitle:link,
.view headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode .view text.subtitle:link,
headerbar.selection-mode .view button.subtitle:link,
headerbar.selection-mode .view button.subtitle:visited,
textview text:selected,
textview headerbar.selection-mode text.subtitle:link,
textview headerbar.selection-mode button.subtitle:link,
textview headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode textview text.subtitle:link,
headerbar.selection-mode textview button.subtitle:link,
headerbar.selection-mode textview button.subtitle:visited,
textview headerbar.selection-mode headerbar text.subtitle:link,
textview headerbar.selection-mode headerbar button.subtitle:link,
textview headerbar.selection-mode headerbar button.subtitle:visited,
headerbar.selection-mode headerbar textview text.subtitle:link,
headerbar.selection-mode headerbar textview button.subtitle:link,
headerbar.selection-mode headerbar textview button.subtitle:visited, .view text selection:focus, .view text selection,
textview text selection:focus,
textview text selection, flowbox flowboxchild:selected,
flowbox headerbar.selection-mode flowboxchild.subtitle:link,
flowbox headerbar.selection-mode button.subtitle:link,
flowbox headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode flowbox flowboxchild.subtitle:link,
headerbar.selection-mode flowbox button.subtitle:link,
headerbar.selection-mode flowbox button.subtitle:visited,
flowbox headerbar.selection-mode headerbar flowboxchild.subtitle:link,
flowbox headerbar.selection-mode headerbar button.subtitle:link,
flowbox headerbar.selection-mode headerbar button.subtitle:visited,
headerbar.selection-mode headerbar flowbox flowboxchild.subtitle:link,
headerbar.selection-mode headerbar flowbox button.subtitle:link,
headerbar.selection-mode headerbar flowbox button.subtitle:visited, label:disabled selection, label:backdrop selection {
  background-color: @theme_selected_bg_color_breeze;
  color: @theme_selected_fg_color_breeze; }
  .sidebar:hover:selected,
  headerbar.selection-mode button.sidebar.subtitle:hover:visited, row:hover:selected, spinbutton:not(.vertical) selection:hover:focus, spinbutton:not(.vertical) selection:hover,
  entry selection:hover:focus,
  entry selection:hover,
  headerbar.selection-mode .subtitle:hover:link,
  headerbar.selection-mode button:hover:link,
  headerbar.selection-mode button:hover:visited,
  .view:hover:selected,
  textview text:hover:selected:focus, .view text:hover:selected,
  textview text:hover:selected, .view text selection:hover,
  textview text selection:hover:focus,
  textview text selection:hover, flowbox flowboxchild:hover:selected, label:disabled selection:hover, label:backdrop selection:hover {
    background-color: @theme_hovering_selected_bg_color_breeze;
    color: @theme_hovering_selected_fg_color_breeze; }
  .sidebar:backdrop:selected,
  headerbar.selection-mode .sidebar.subtitle:backdrop:link,
  headerbar.selection-mode button.sidebar.subtitle:backdrop:visited, row:backdrop:selected, spinbutton:not(.vertical) selection:backdrop:focus, spinbutton:not(.vertical) selection:backdrop,
  entry selection:backdrop:focus,
  entry selection:backdrop {
    background-color: @theme_unfocused_selected_bg_color_breeze;
    color: @theme_unfocused_base_color_breeze; }

.sidebar row:selected, .sidebar:selected,
headerbar.selection-mode .sidebar.subtitle:link,
headerbar.selection-mode button.sidebar.subtitle:visited, row:selected, spinbutton:not(.vertical) selection:focus, spinbutton:not(.vertical) selection,
entry selection:focus,
entry selection,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited,
.view:selected:focus,
.view:selected,
headerbar.selection-mode .view.subtitle:link,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited, .view text:selected:focus,
textview text:selected:focus,
textview headerbar.selection-mode text.subtitle:focus:link,
textview headerbar.selection-mode button:focus:link,
textview headerbar.selection-mode button:focus:visited,
headerbar.selection-mode textview text.subtitle:focus:link,
headerbar.selection-mode textview button:focus:link,
headerbar.selection-mode textview button:focus:visited, .view text:selected,
.view headerbar.selection-mode text.subtitle:link,
.view headerbar.selection-mode button.subtitle:link,
.view headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode .view text.subtitle:link,
headerbar.selection-mode .view button.subtitle:link,
headerbar.selection-mode .view button.subtitle:visited,
textview text:selected,
textview headerbar.selection-mode text.subtitle:link,
textview headerbar.selection-mode button.subtitle:link,
textview headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode textview text.subtitle:link,
headerbar.selection-mode textview button.subtitle:link,
headerbar.selection-mode textview button.subtitle:visited,
textview headerbar.selection-mode headerbar text.subtitle:link,
textview headerbar.selection-mode headerbar button.subtitle:link,
textview headerbar.selection-mode headerbar button.subtitle:visited,
headerbar.selection-mode headerbar textview text.subtitle:link,
headerbar.selection-mode headerbar textview button.subtitle:link,
headerbar.selection-mode headerbar textview button.subtitle:visited, .view text selection:focus, .view text selection,
textview text selection:focus,
textview text selection, flowbox flowboxchild:selected,
flowbox headerbar.selection-mode flowboxchild.subtitle:link,
flowbox headerbar.selection-mode button.subtitle:link,
flowbox headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode flowbox flowboxchild.subtitle:link,
headerbar.selection-mode flowbox button.subtitle:link,
headerbar.selection-mode flowbox button.subtitle:visited,
flowbox headerbar.selection-mode headerbar flowboxchild.subtitle:link,
flowbox headerbar.selection-mode headerbar button.subtitle:link,
flowbox headerbar.selection-mode headerbar button.subtitle:visited,
headerbar.selection-mode headerbar flowbox flowboxchild.subtitle:link,
headerbar.selection-mode headerbar flowbox button.subtitle:link,
headerbar.selection-mode headerbar flowbox button.subtitle:visited, label:disabled selection, label:backdrop selection {
  background-color: @theme_selected_bg_color_breeze;
  border-radius: 0px; }
  .sidebar row:selected, .sidebar:selected,
  headerbar.selection-mode .sidebar.subtitle:link,
  headerbar.selection-mode button.sidebar.subtitle:visited, row:selected, spinbutton:not(.vertical) selection:focus, spinbutton:not(.vertical) selection,
  entry selection:focus,
  entry selection,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited,
  .view:selected:focus,
  .view:selected,
  headerbar.selection-mode .view.subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited, .view text:selected:focus,
  textview text:selected:focus,
  textview headerbar.selection-mode text.subtitle:focus:link,
  textview headerbar.selection-mode button:focus:link,
  textview headerbar.selection-mode button:focus:visited,
  headerbar.selection-mode textview text.subtitle:focus:link,
  headerbar.selection-mode textview button:focus:link,
  headerbar.selection-mode textview button:focus:visited, .view text:selected,
  .view headerbar.selection-mode text.subtitle:link,
  .view headerbar.selection-mode button.subtitle:link,
  .view headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode .view text.subtitle:link,
  headerbar.selection-mode .view button.subtitle:link,
  headerbar.selection-mode .view button.subtitle:visited,
  textview text:selected,
  textview headerbar.selection-mode text.subtitle:link,
  textview headerbar.selection-mode button.subtitle:link,
  textview headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode textview text.subtitle:link,
  headerbar.selection-mode textview button.subtitle:link,
  headerbar.selection-mode textview button.subtitle:visited,
  textview headerbar.selection-mode headerbar text.subtitle:link,
  textview headerbar.selection-mode headerbar button.subtitle:link,
  textview headerbar.selection-mode headerbar button.subtitle:visited,
  headerbar.selection-mode headerbar textview text.subtitle:link,
  headerbar.selection-mode headerbar textview button.subtitle:link,
  headerbar.selection-mode headerbar textview button.subtitle:visited, .view text selection:focus, .view text selection,
  textview text selection:focus,
  textview text selection, flowbox flowboxchild:selected,
  flowbox headerbar.selection-mode flowboxchild.subtitle:link,
  flowbox headerbar.selection-mode button.subtitle:link,
  flowbox headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode flowbox flowboxchild.subtitle:link,
  headerbar.selection-mode flowbox button.subtitle:link,
  headerbar.selection-mode flowbox button.subtitle:visited,
  flowbox headerbar.selection-mode headerbar flowboxchild.subtitle:link,
  flowbox headerbar.selection-mode headerbar button.subtitle:link,
  flowbox headerbar.selection-mode headerbar button.subtitle:visited,
  headerbar.selection-mode headerbar flowbox flowboxchild.subtitle:link,
  headerbar.selection-mode headerbar flowbox button.subtitle:link,
  headerbar.selection-mode headerbar flowbox button.subtitle:visited, label:disabled selection, label:backdrop selection {
    color: @theme_selected_fg_color_breeze; }
    .sidebar:disabled:selected,
    headerbar.selection-mode .sidebar.subtitle:disabled:link,
    headerbar.selection-mode button.sidebar.subtitle:disabled:visited, row:disabled:selected, spinbutton:not(.vertical) selection:disabled:focus, spinbutton:not(.vertical) selection:disabled,
    entry selection:disabled:focus,
    entry selection:disabled {
      color: @insensitive_selected_fg_color_breeze; }
    .sidebar:backdrop:selected,
    headerbar.selection-mode .sidebar.subtitle:backdrop:link,
    headerbar.selection-mode button.sidebar.subtitle:backdrop:visited, row:backdrop:selected, spinbutton:not(.vertical) selection:backdrop:focus, spinbutton:not(.vertical) selection:backdrop,
    entry selection:backdrop:focus,
    entry selection:backdrop {
      color: @theme_unfocused_selected_fg_color_breeze; }
      .sidebar:backdrop:disabled:selected,
      headerbar.selection-mode .sidebar.subtitle:backdrop:disabled:link,
      headerbar.selection-mode button.sidebar.subtitle:backdrop:disabled:visited, row:backdrop:disabled:selected, spinbutton:not(.vertical) selection:backdrop:disabled,
      entry selection:backdrop:disabled:focus,
      entry selection:backdrop:disabled {
        color: @insensitive_unfocused_selected_fg_color_breeze; }

/***********
 * Buttons *
 ***********/
@keyframes needs_attention {
  from {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.01, to(@theme_button_decoration_focus_breeze), to(transparent)); }
  to {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_selected_bg_color_breeze), to(transparent)); } }

popover.background.touch-selection button.osd, popover.background.magnifier button.osd,
button.osd, .csd popover.background.touch-selection button, .csd popover.background.magnifier button, popover.background.touch-selection button, popover.background.magnifier button,
button {
  border: 1px solid;
  border-radius: 1.25mm;
  padding: 6px 6px;
  background-clip: border-box;
  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.125);
  text-shadow: none;
  -gtk-icon-shadow: none;
  color: @theme_button_foreground_normal_breeze;
  border-color: @borders_breeze;
  background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%); }
  
  button.suggested-action.osd, popover.background.touch-selection button.suggested-action, popover.background.magnifier button.suggested-action,
  button.suggested-action {
    background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
    border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  
  button.destructive-action.osd, popover.background.touch-selection button.destructive-action, popover.background.magnifier button.destructive-action,
  button.destructive-action {
    background-color: alpha(@error_color_breeze,0.2);
    border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  
  button.osd:backdrop, popover.background.touch-selection button:backdrop, popover.background.magnifier button:backdrop,
  button:backdrop {
    box-shadow: none;
    background: @theme_button_background_normal_breeze; }
  
  button.osd:checked, popover.background.touch-selection button:checked, popover.background.magnifier button:checked,
  button:checked {
    background: alpha(@theme_button_foreground_normal_breeze,0.125);
    box-shadow: none; }
  
  button.osd:hover, popover.background.touch-selection button:hover, popover.background.magnifier button:hover,
  button:hover {
    border-color: @theme_button_decoration_hover_breeze; }
    popover.background.touch-selection button:hover:not(:checked):not(:active), popover.background.magnifier button:hover:not(:checked):not(:active),
    button:hover:not(:checked):not(:active) {
      background: @theme_button_background_normal_breeze; }
  
  button.osd:active, popover.background.touch-selection button:active, popover.background.magnifier button:active,
  button:active {
    box-shadow: none;
    background: alpha(@theme_button_decoration_hover_breeze,0.333); }
  
  button.osd:focus, popover.background.touch-selection button:focus, popover.background.magnifier button:focus,
  button:focus {
    border-color: @theme_button_decoration_focus_breeze; }
  
  button.osd:disabled, popover.background.touch-selection button:disabled, popover.background.magnifier button:disabled,
  button:disabled {
    box-shadow: none;
    color: @theme_button_foreground_insensitive_breeze;
    border-color: @insensitive_borders_breeze;
    background: @theme_button_background_insensitive_breeze; }
    popover.background.touch-selection button:disabled:active, popover.background.magnifier button:disabled:active,
    button:disabled:active, popover.background.touch-selection button:disabled:checked, popover.background.magnifier button:disabled:checked,
    button:disabled:checked {
      color: @theme_button_foreground_active_insensitive_breeze; }
  
  button.flat.osd, popover.background.touch-selection button.flat, popover.background.magnifier button.flat,
  button.flat {
    border-color: transparent;
    background: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    text-shadow: none;
    -gtk-icon-shadow: none; }
    popover.background.touch-selection button.suggested-action, popover.background.magnifier button.suggested-action,
    button.flat.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    popover.background.touch-selection button.destructive-action, popover.background.magnifier button.destructive-action,
    button.flat.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    popover.background.touch-selection button.flat:checked, popover.background.magnifier button.flat:checked,
    button.flat:checked {
      border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
      background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
    popover.background.touch-selection button.flat:hover, popover.background.magnifier button.flat:hover,
    button.flat:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      
      button.flat:hover:not(:checked):not(:active) {
        background: unset; }
    popover.background.touch-selection button.flat:active, popover.background.magnifier button.flat:active,
    button.flat:active {
      border-color: @theme_button_decoration_hover_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
    popover.background.touch-selection button.flat:focus, popover.background.magnifier button.flat:focus,
    button.flat:focus {
      border-color: @theme_button_decoration_focus_breeze; }
  popover.background.touch-selection button.osd separator, popover.background.magnifier button.osd separator,
  button.osd separator, .csd popover.background.touch-selection button separator, .csd popover.background.magnifier button separator, popover.background.touch-selection button separator, popover.background.magnifier button separator,
  button separator {
    background-color: transparent;
    background-image: none;
    color: transparent; }

popover.background.touch-selection button.image-button, popover.background.magnifier button.image-button,
button.image-button {
  min-height: 16px;
  min-width: 16px;
  padding: 6px; }

popover.background.touch-selection button.text-button, popover.background.magnifier button.text-button,
button.text-button {
  padding-left: 6px;
  padding-right: 6px; }

popover.background.touch-selection button.circular, popover.background.magnifier button.circular,
button.circular {
  min-width: 18px;
  min-height: 18px;
  border-radius: 9999px; }

popover.background.touch-selection button.text-button.image-button, popover.background.magnifier button.text-button.image-button,
button.text-button.image-button {
  padding-left: 6px;
  padding-right: 6px; }
  popover.background.touch-selection button.text-button.image-button label, popover.background.magnifier button.text-button.image-button label,
  button.text-button.image-button label {
    padding-left: 6px;
    padding-right: 6px; }

row:selected popover.background.touch-selection button, popover.background.touch-selection row:selected button, row:selected popover.background.magnifier button, popover.background.magnifier row:selected button,
headerbar.selection-mode row.subtitle:link popover.background.touch-selection button,
popover.background.touch-selection headerbar.selection-mode row.subtitle:link button,
headerbar.selection-mode row.subtitle:link popover.background.magnifier button,
popover.background.magnifier headerbar.selection-mode row.subtitle:link button,
headerbar.selection-mode button.subtitle:link popover.background.touch-selection button,
popover.background.touch-selection headerbar.selection-mode button.subtitle:link button,
headerbar.selection-mode button.subtitle:link popover.background.magnifier button,
popover.background.magnifier headerbar.selection-mode button.subtitle:link button,
headerbar.selection-mode button.subtitle:visited popover.background.touch-selection button,
popover.background.touch-selection headerbar.selection-mode button.subtitle:visited button,
headerbar.selection-mode button.subtitle:visited popover.background.magnifier button,
popover.background.magnifier headerbar.selection-mode button.subtitle:visited button, row:selected button,
headerbar.selection-mode row.subtitle:link button,
headerbar.selection-mode button.subtitle:link button,
headerbar.selection-mode button.subtitle:visited button,
headerbar.selection-mode headerbar row.subtitle:link button,
headerbar.selection-mode headerbar button.subtitle:link button,
headerbar.selection-mode headerbar button.subtitle:visited button {
  border-color: @theme_selected_bg_color_breeze; }
  row:selected button.flat:not(:active):not(:checked):not(:hover):not(disabled),
  headerbar.selection-mode row.subtitle:link button.flat:not(:active):not(:checked):not(:hover):not(disabled),
  headerbar.selection-mode button.subtitle:link button.flat:not(:active):not(:checked):not(:hover):not(disabled),
  headerbar.selection-mode button.subtitle:visited button.flat:not(:active):not(:checked):not(:hover):not(disabled) {
    color: @theme_selected_fg_color_breeze;
    border-color: transparent; }
    row:selected label:backdrop selection:not(disabled),
    headerbar.selection-mode row.subtitle:link label:backdrop selection:not(disabled),
    headerbar.selection-mode button.subtitle:link label:backdrop selection:not(disabled),
    headerbar.selection-mode button.subtitle:visited label:backdrop selection:not(disabled), label:backdrop row:selected selection:not(disabled),
    label:backdrop headerbar.selection-mode row.subtitle:link selection:not(disabled),
    label:backdrop headerbar.selection-mode button.subtitle:link selection:not(disabled),
    label:backdrop headerbar.selection-mode button.subtitle:visited selection:not(disabled),
    headerbar.selection-mode label:backdrop row.subtitle:link selection:not(disabled),
    headerbar.selection-mode label:backdrop button.subtitle:link selection:not(disabled),
    headerbar.selection-mode label:backdrop button.subtitle:visited selection:not(disabled), row:selected button.flat:not(:active):not(:checked):not(:hover):not(disabled):backdrop,
    headerbar.selection-mode row.subtitle:link button.flat:not(:active):not(:checked):not(:hover):not(disabled):backdrop,
    headerbar.selection-mode button.subtitle:link button.flat:not(:active):not(:checked):not(:hover):not(disabled):backdrop,
    headerbar.selection-mode button.subtitle:visited button.flat:not(:active):not(:checked):not(:hover):not(disabled):backdrop {
      color: @theme_unfocused_selected_fg_color_breeze; }

popover.background.touch-selection .stack-switcher > button > label, popover.background.magnifier .stack-switcher > button > label, .stack-switcher > button > label {
  padding-left: 6px;
  padding-right: 6px; }

popover.background.touch-selection .stack-switcher > button > image, popover.background.magnifier .stack-switcher > button > image, .stack-switcher > button > image {
  padding-left: 6px;
  padding-right: 6px;
  padding-top: 3px;
  padding-bottom: 3px; }

popover.background.touch-selection .stack-switcher > button.text-button, popover.background.magnifier .stack-switcher > button.text-button, .stack-switcher > button.text-button {
  padding: 6px; }

popover.background.touch-selection .stack-switcher > button.image-button, popover.background.magnifier .stack-switcher > button.image-button, .stack-switcher > button.image-button {
  padding: 3px 0px; }

.stack-switcher > button.needs-attention:active > label, .stack-switcher > button.needs-attention:active > image, .stack-switcher > button.needs-attention:focus > label, .stack-switcher > button.needs-attention:focus > image, .stack-switcher > button.needs-attention:checked > label, .stack-switcher > button.needs-attention:checked > image {
  animation: none;
  background-image: none; }

.inline-toolbar popover.background.touch-selection button, popover.background.touch-selection .inline-toolbar button, .inline-toolbar popover.background.magnifier button, popover.background.magnifier .inline-toolbar button, .inline-toolbar button {
  border-radius: 1.25mm;
  border-width: 1px; }

.primary-toolbar popover.background.touch-selection button, popover.background.touch-selection .primary-toolbar button, .primary-toolbar popover.background.magnifier button, popover.background.magnifier .primary-toolbar button, .primary-toolbar button {
  -gtk-icon-shadow: none; }

/**************
 * ComboBoxes *
 **************/
combobox arrow {
  -gtk-icon-source: -gtk-icontheme("go-down-symbolic");
  min-height: 16px;
  min-width: 16px; }

combobox button {
  padding-top: 4px;
  padding-bottom: 4px; }

headerbar combobox > box > button.combo:only-child, .linked combobox > box > button.combo:only-child {
  box-shadow: none; }

combobox > box > button.combo:only-child arrow {
  min-width: 14px; }
  combobox > box > button.combo:only-child arrow:dir(rtl) {
    margin-left: -3px; }
  combobox > box > button.combo:only-child arrow:dir(ltr) {
    margin-right: -3px; }

stacksidebar.sidebar row.needs-attention > .label, popover.background.touch-selection .stack-switcher > button.needs-attention > label, popover.background.magnifier .stack-switcher > button.needs-attention > label, popover.background.touch-selection .stack-switcher > button.needs-attention > image, popover.background.magnifier .stack-switcher > button.needs-attention > image, .stack-switcher > button.needs-attention > label, .stack-switcher > button.needs-attention > image {
  animation: needs_attention 150ms ease-in;
  background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_button_decoration_focus_breeze), to(transparent)), -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_button_foreground_normal_breeze), to(transparent));
  background-size: 6px 6px, 6px 6px;
  background-repeat: no-repeat;
  background-position: right 3px, right 4px; }
  stacksidebar.sidebar row.needs-attention > .label:backdrop {
    background-size: 6px 6px, 0 0; }
  stacksidebar.sidebar row.needs-attention > .label:dir(rtl), .stack-switcher > button.needs-attention > label:dir(rtl), .stack-switcher > button.needs-attention > image:dir(rtl) {
    background-position: left 3px, left 4px; }

box.linked:not(.vertical):not(.dialog-action-area) entry,
box.linked:not(.vertical):not(.dialog-action-area) button,
box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry,
box.inline-toolbar:not(.vertical):not(.dialog-action-area) button,
buttonbox.linked:not(.vertical):not(.dialog-action-area) entry,
buttonbox.linked:not(.vertical):not(.dialog-action-area) button {
  border-right-style: none;
  border-radius: 0; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:not(.combo),
  box.linked:not(.vertical):not(.dialog-action-area) button:not(.combo),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:not(.combo),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:not(.combo),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:not(.combo),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:not(.combo) {
    box-shadow: none; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:first-child,
  box.linked:not(.vertical):not(.dialog-action-area) button:first-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:first-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:first-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:first-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:first-child {
    border-top-left-radius: 1.25mm;
    border-bottom-left-radius: 1.25mm; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:last-child,
  box.linked:not(.vertical):not(.dialog-action-area) button:last-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:last-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:last-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:last-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:last-child {
    border-right-style: solid;
    border-top-right-radius: 1.25mm;
    border-bottom-right-radius: 1.25mm; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:only-child,
  box.linked:not(.vertical):not(.dialog-action-area) button:only-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:only-child,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:only-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:only-child,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:only-child {
    border-style: solid;
    border-radius: 1.25mm; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  box.linked:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:first-child),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:first-child),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:first-child) {
    margin-left: 0; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  box.linked:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:last-child),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:last-child),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:not(:only-child):not(:last-child) {
    margin-right: 0; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:focus + entry,
  box.linked:not(.vertical):not(.dialog-action-area) button:focus + entry,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:focus + entry,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:focus + entry,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:focus + entry,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:focus + entry {
    border-left-color: @theme_view_active_decoration_color_breeze; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:focus + button,
  box.linked:not(.vertical):not(.dialog-action-area) button:focus + button,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:focus + button,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:focus + button,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:focus + button,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:focus + button {
    border-left-color: @theme_button_decoration_focus_breeze; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:hover + entry,
  box.linked:not(.vertical):not(.dialog-action-area) button:hover + entry,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:hover + entry,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:hover + entry,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:hover + entry,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:hover + entry {
    border-left-color: @theme_view_active_decoration_color_breeze; }
  box.linked:not(.vertical):not(.dialog-action-area) entry:hover + button,
  box.linked:not(.vertical):not(.dialog-action-area) button:hover + button,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) entry:hover + button,
  box.inline-toolbar:not(.vertical):not(.dialog-action-area) button:hover + button,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) entry:hover + button,
  buttonbox.linked:not(.vertical):not(.dialog-action-area) button:hover + button {
    border-left-color: @theme_button_decoration_hover_breeze; }

box.linked.vertical:not(.dialog-action-area) entry,
box.linked.vertical:not(.dialog-action-area) button,
box.inline-toolbar.vertical:not(.dialog-action-area) entry,
box.inline-toolbar.vertical:not(.dialog-action-area) button,
buttonbox.linked.vertical:not(.dialog-action-area) entry,
buttonbox.linked.vertical:not(.dialog-action-area) button {
  border-bottom-style: none;
  border-radius: 0; }
  box.linked.vertical:not(.dialog-action-area) entry:not(.combo),
  box.linked.vertical:not(.dialog-action-area) button:not(.combo),
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:not(.combo),
  box.inline-toolbar.vertical:not(.dialog-action-area) button:not(.combo),
  buttonbox.linked.vertical:not(.dialog-action-area) entry:not(.combo),
  buttonbox.linked.vertical:not(.dialog-action-area) button:not(.combo) {
    box-shadow: none; }
  box.linked.vertical:not(.dialog-action-area) entry:first-child,
  box.linked.vertical:not(.dialog-action-area) button:first-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:first-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:first-child,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:first-child,
  buttonbox.linked.vertical:not(.dialog-action-area) button:first-child {
    border-top-left-radius: 1.25mm;
    border-top-right-radius: 1.25mm; }
  box.linked.vertical:not(.dialog-action-area) entry:last-child,
  box.linked.vertical:not(.dialog-action-area) button:last-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:last-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:last-child,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:last-child,
  buttonbox.linked.vertical:not(.dialog-action-area) button:last-child {
    border-bottom-style: solid;
    border-bottom-left-radius: 1.25mm;
    border-bottom-right-radius: 1.25mm; }
  box.linked.vertical:not(.dialog-action-area) entry:only-child,
  box.linked.vertical:not(.dialog-action-area) button:only-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:only-child,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:only-child,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:only-child,
  buttonbox.linked.vertical:not(.dialog-action-area) button:only-child {
    border-style: solid; }
  box.linked.vertical:not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  box.linked.vertical:not(.dialog-action-area) button:not(:only-child):not(:first-child),
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  box.inline-toolbar.vertical:not(.dialog-action-area) button:not(:only-child):not(:first-child),
  buttonbox.linked.vertical:not(.dialog-action-area) entry:not(:only-child):not(:first-child),
  buttonbox.linked.vertical:not(.dialog-action-area) button:not(:only-child):not(:first-child) {
    margin-top: 0; }
  box.linked.vertical:not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  box.linked.vertical:not(.dialog-action-area) button:not(:only-child):not(:last-child),
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  box.inline-toolbar.vertical:not(.dialog-action-area) button:not(:only-child):not(:last-child),
  buttonbox.linked.vertical:not(.dialog-action-area) entry:not(:only-child):not(:last-child),
  buttonbox.linked.vertical:not(.dialog-action-area) button:not(:only-child):not(:last-child) {
    margin-bottom: 0; }
  box.linked.vertical:not(.dialog-action-area) entry:focus + entry,
  box.linked.vertical:not(.dialog-action-area) button:focus + entry,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:focus + entry,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:focus + entry,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:focus + entry,
  buttonbox.linked.vertical:not(.dialog-action-area) button:focus + entry {
    border-top-color: @theme_view_active_decoration_color_breeze; }
  box.linked.vertical:not(.dialog-action-area) entry:focus + button,
  box.linked.vertical:not(.dialog-action-area) button:focus + button,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:focus + button,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:focus + button,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:focus + button,
  buttonbox.linked.vertical:not(.dialog-action-area) button:focus + button {
    border-top-color: @theme_view_active_decoration_color_breeze; }
  box.linked.vertical:not(.dialog-action-area) entry:hover + entry,
  box.linked.vertical:not(.dialog-action-area) button:hover + entry,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:hover + entry,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:hover + entry,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:hover + entry,
  buttonbox.linked.vertical:not(.dialog-action-area) button:hover + entry {
    border-top-color: @theme_view_active_decoration_color_breeze; }
  box.linked.vertical:not(.dialog-action-area) entry:hover + button,
  box.linked.vertical:not(.dialog-action-area) button:hover + button,
  box.inline-toolbar.vertical:not(.dialog-action-area) entry:hover + button,
  box.inline-toolbar.vertical:not(.dialog-action-area) button:hover + button,
  buttonbox.linked.vertical:not(.dialog-action-area) entry:hover + button,
  buttonbox.linked.vertical:not(.dialog-action-area) button:hover + button {
    border-top-color: @theme_view_active_decoration_color_breeze; }

stackswitcher.linked button:not(.flat) {
  box-shadow: none;
  border-right-style: none;
  border-radius: 0; }
  stackswitcher.linked button:not(.flat):first-child {
    border-top-left-radius: 1.25mm;
    border-bottom-left-radius: 1.25mm; }
  stackswitcher.linked button:not(.flat):last-child {
    border-right-style: solid;
    border-top-right-radius: 1.25mm;
    border-bottom-right-radius: 1.25mm; }
  stackswitcher.linked button:not(.flat):only-child {
    border-style: solid;
    border-radius: 1.25mm; }
  stackswitcher.linked button:not(.flat):not(:only-child):not(:first-child) {
    margin-left: 0; }
  stackswitcher.linked button:not(.flat):not(:only-child):not(:last-child) {
    margin-right: 0; }
  stackswitcher.linked button:not(.flat):focus + entry {
    border-left-color: @theme_view_active_decoration_color_breeze; }
  stackswitcher.linked button:not(.flat):focus + button {
    border-left-color: @theme_button_decoration_focus_breeze; }
  stackswitcher.linked button:not(.flat):hover + entry {
    border-left-color: @theme_view_active_decoration_color_breeze; }
  stackswitcher.linked button:not(.flat):hover + button {
    border-left-color: @theme_button_decoration_hover_breeze; }

modelbutton.flat:backdrop, popover.background checkbutton.flat:backdrop,
popover.background radiobutton.flat:backdrop, modelbutton.flat:backdrop:hover,
label:backdrop selection.flat, modelbutton.flat, popover.background checkbutton.flat,
popover.background radiobutton.flat,
.menuitem.button.flat,
popover.background checkbutton.button,
popover.background radiobutton.button, button:link:hover, button:link:active, button:link:checked,
button:visited:hover,
button:visited:active,
button:visited:checked, button:link,
button:visited,
headerbar button.flat:disabled,
headerbar label:disabled selection.flat,
label:disabled headerbar selection.flat, calendar.button:backdrop, label:backdrop selection.button, calendar.button:active, calendar.button:hover, calendar.button {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  box-shadow: none;
  text-shadow: none;
  -gtk-icon-shadow: none; }

/****************
 * Text Entries *
 ****************/
spinbutton:not(.vertical),
entry {
  min-height: 30px;
  padding-left: 8px;
  padding-right: 8px;
  border: 1px solid;
  border-radius: 1.25mm;
  color: @theme_text_color_breeze;
  border-color: @borders_breeze;
  background-color: @theme_base_color_breeze;
  box-shadow: none; }
  spinbutton:not(.vertical) image.left,
  entry image.left {
    padding-left: 0;
    padding-right: 6px; }
  spinbutton:not(.vertical) image.right,
  entry image.right {
    padding-left: 6px;
    padding-right: 0; }
  spinbutton.flat:not(.vertical),
  entry.flat:focus,
  entry.flat {
    min-height: 0;
    padding: 2px;
    color: @theme_text_color_breeze;
    border-color: @borders_breeze;
    background-color: @theme_base_color_breeze;
    box-shadow: none; }
  spinbutton:focus:not(.vertical),
  entry:focus {
    border-color: @theme_view_active_decoration_color_breeze; }
  spinbutton:disabled:not(.vertical),
  entry:disabled {
    color: @insensitive_base_fg_color_breeze;
    border-color: @insensitive_borders_breeze;
    background-color: @insensitive_base_color_breeze; }
  spinbutton:backdrop:not(.vertical),
  entry:backdrop {
    color: @theme_unfocused_text_color_breeze;
    border-color: @unfocused_borders_breeze;
    background-color: @theme_unfocused_base_color_breeze; }
  spinbutton:backdrop:disabled:not(.vertical),
  entry:backdrop:disabled {
    color: @theme_unfocused_view_text_color_breeze;
    border-color: @unfocused_insensitive_borders_breeze;
    background-color: @theme_unfocused_view_bg_color_breeze; }
  spinbutton.error:not(.vertical),
  entry.error {
    color: @error_color_breeze;
    border-color: @error_color_breeze;
    background-color: alpha(@error_color_breeze,0.5); }
    spinbutton.error:focus:not(.vertical),
    entry.error:focus {
      border-color: @error_color_breeze;
      background-color: alpha(@error_color_breeze,0.5); }
    spinbutton.error:selected:not(.vertical),
    headerbar.selection-mode .error.subtitle:link,
    headerbar.selection-mode button.subtitle:link,
    headerbar.selection-mode button.subtitle:visited,
    entry.error:selected,
    entry.error:selected:focus {
      background-color: @error_color_breeze; }
    spinbutton.error:backdrop:not(.vertical), label:backdrop selection.error,
    entry.error:backdrop {
      color: @error_color_backdrop_breeze;
      border-color: @error_color_backdrop_breeze;
      background-color: alpha(@error_color_backdrop_breeze,0.5); }
  spinbutton.warning:not(.vertical),
  entry.warning {
    color: @warning_color_breeze;
    border-color: @warning_color_breeze;
    background-color: alpha(@warning_color_breeze,0.5); }
    spinbutton.warning:focus:not(.vertical),
    entry.warning:focus {
      border-color: @warning_color_breeze;
      background-color: alpha(@warning_color_breeze,0.5); }
    spinbutton.warning:selected:not(.vertical),
    headerbar.selection-mode .warning.subtitle:link,
    headerbar.selection-mode button.subtitle:link,
    headerbar.selection-mode button.subtitle:visited,
    entry.warning:selected,
    entry.warning:selected:focus {
      background-color: @warning_color_breeze; }
    spinbutton.warning:backdrop:not(.vertical), label:backdrop selection.warning,
    entry.warning:backdrop {
      color: @warning_color_backdrop_breeze;
      border-color: @warning_color_backdrop_breeze;
      background-color: alpha(@warning_color_backdrop_breeze,0.5); }
  spinbutton:not(.vertical) image,
  entry image {
    color: mix(@theme_fg_color_breeze,@theme_text_color_breeze,0.8); }
    spinbutton:not(.vertical) image:hover,
    entry image:hover {
      color: @theme_button_decoration_hover_breeze; }
    spinbutton:not(.vertical) image:active,
    entry image:active {
      color: @theme_button_decoration_focus_breeze; }
    spinbutton:not(.vertical) image:backdrop,
    entry image:backdrop {
      color: mix(@theme_unfocused_fg_color_breeze,@theme_unfocused_fg_color_breeze,0.8); }

spinbutton:not(.vertical) progress,
entry progress {
  margin: 1px;
  border-radius: 0;
  border-width: 0 0 2px;
  border-color: @theme_selected_bg_color_breeze;
  border-style: solid;
  background-image: none;
  background-color: transparent;
  box-shadow: none; }
  spinbutton:not(.vertical) progress:backdrop,
  entry progress:backdrop {
    background-color: transparent;
    border-color: @theme_unfocused_selected_bg_color_breeze; }

treeview acceleditor > label {
  background-color: @theme_selected_bg_color_breeze; }

treeview entry.flat, treeview entry {
  border-radius: 0;
  background-image: none;
  background-color: @theme_base_color_breeze; }
  treeview entry.flat:focus, treeview entry:focus {
    border-color: @theme_view_active_decoration_color_breeze; }

combobox > box > button.combo:not(:only-child) {
  background: none;
  color: @theme_text_color_breeze;
  border-color: @borders_breeze;
  background-color: @theme_base_color_breeze;
  box-shadow: none; }
  combobox > box > button.combo:not(:only-child):focus {
    border-color: @theme_view_active_decoration_color_breeze; }
  combobox > box > button.combo:not(:only-child):disabled, label:disabled combobox > box > selection:not(:only-child) {
    color: @insensitive_base_fg_color_breeze;
    border-color: @insensitive_borders_breeze;
    background-color: @insensitive_base_color_breeze; }
  combobox > box > button.combo:not(:only-child):backdrop, label:backdrop combobox > box > selection:not(:only-child) {
    color: @theme_unfocused_text_color_breeze;
    border-color: @unfocused_borders_breeze;
    background-color: @theme_unfocused_base_color_breeze; }
  combobox > box > button.combo:not(:only-child):backdrop:disabled, label:backdrop combobox > box > selection:not(:only-child):disabled, label:disabled combobox > box > selection:not(:only-child):backdrop, label:backdrop label:disabled combobox > box > selection:not(:only-child), label:disabled label:backdrop combobox > box > selection:not(:only-child) {
    color: @theme_unfocused_view_text_color_breeze;
    border-color: @unfocused_insensitive_borders_breeze;
    background-color: @theme_unfocused_view_bg_color_breeze; }

/*********************
 * App Notifications *
 *********************/
.app-notification,
.app-notification.frame {
  padding: 10px;
  border-top-width: 0px;
  border-radius: 0px 0px 3px 3px; }
  .app-notification:backdrop, label:backdrop selection.app-notification,
  .app-notification.frame:backdrop,
  label:backdrop selection.frame {
    background-image: none; }
  .app-notification button,
  .app-notification.frame button {
    box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.125);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    border-color: @borders_breeze;
    background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%); }
    .app-notification button.suggested-action,
    .app-notification.frame button.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    .app-notification button.destructive-action,
    .app-notification.frame button.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    .app-notification button:backdrop,
    .app-notification.frame button:backdrop {
      box-shadow: none;
      background: @theme_button_background_normal_breeze; }
    .app-notification button:checked,
    .app-notification.frame button:checked {
      background: alpha(@theme_button_foreground_normal_breeze,0.125);
      box-shadow: none; }
    .app-notification button:hover,
    .app-notification.frame button:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      .app-notification button:hover:not(:checked):not(:active),
      .app-notification.frame button:hover:not(:checked):not(:active) {
        background: @theme_button_background_normal_breeze; }
    .app-notification button:active,
    .app-notification.frame button:active {
      box-shadow: none;
      background: alpha(@theme_button_decoration_hover_breeze,0.333); }
    .app-notification button:focus,
    .app-notification.frame button:focus {
      border-color: @theme_button_decoration_focus_breeze; }
    .app-notification button:disabled,
    .app-notification.frame button:disabled {
      box-shadow: none;
      color: @theme_button_foreground_insensitive_breeze;
      border-color: @insensitive_borders_breeze;
      background: @theme_button_background_insensitive_breeze; }
      .app-notification button:disabled:active, .app-notification button:disabled:checked,
      .app-notification.frame button:disabled:active,
      .app-notification.frame button:disabled:checked {
        color: @theme_button_foreground_active_insensitive_breeze; }
    .app-notification button.flat,
    .app-notification.frame button.flat {
      border-color: transparent;
      background: transparent;
      background-color: transparent;
      background-image: none;
      box-shadow: none;
      color: @theme_button_foreground_normal_breeze;
      text-shadow: none;
      -gtk-icon-shadow: none; }
      .app-notification button.flat.suggested-action,
      .app-notification.frame button.flat.suggested-action {
        background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
        border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
      .app-notification button.flat.destructive-action,
      .app-notification.frame button.flat.destructive-action {
        background-color: alpha(@error_color_breeze,0.2);
        border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
      .app-notification button.flat:checked,
      .app-notification.frame button.flat:checked {
        border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
        background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
      .app-notification button.flat:hover,
      .app-notification.frame button.flat:hover {
        border-color: @theme_button_decoration_hover_breeze; }
        .app-notification button.flat:hover:not(:checked):not(:active),
        .app-notification.frame button.flat:hover:not(:checked):not(:active) {
          background: unset; }
      .app-notification button.flat:active,
      .app-notification.frame button.flat:active {
        border-color: @theme_button_decoration_hover_breeze;
        background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
      .app-notification button.flat:focus,
      .app-notification.frame button.flat:focus {
        border-color: @theme_button_decoration_focus_breeze; }
  .app-notification border,
  .app-notification.frame border {
    border: none; }

/************
 * Calendar *
 ***********/
calendar {
  color: @theme_text_color_breeze;
  border: 1px solid @borders_breeze;
  background-color: @theme_base_color_breeze; }
  calendar:selected,
  headerbar.selection-mode calendar.subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode headerbar calendar.subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:visited {
    background-color: @borders_breeze; }
  calendar:disabled {
    color: @insensitive_base_fg_color_breeze; }
  calendar.header {
    border: 1px solid @borders_breeze;
    border-radius: 0;
    color: @theme_text_color_breeze; }
    calendar.header:backdrop, label:backdrop selection.header {
      color: @theme_unfocused_text_color_breeze;
      border-color: @unfocused_borders_breeze; }
    calendar.header:disabled, label:disabled selection.header {
      color: @insensitive_base_fg_color_breeze; }
  calendar.button {
    color: @theme_button_foreground_normal_breeze; }
    calendar.button:hover {
      color: @theme_button_decoration_hover_breeze; }
    calendar.button:active {
      color: @theme_button_decoration_focus_breeze; }
    calendar.button:backdrop, label:backdrop selection.button {
      color: @theme_button_foreground_backdrop_breeze; }
  calendar:indeterminate, calendar.highlight {
    color: alpha(@theme_text_color_breeze,0.5); }
  calendar:indeterminate:backdrop, label:backdrop selection:indeterminate, calendar.highlight:backdrop, label:backdrop selection.highlight {
    color: alpha(@theme_unfocused_text_color_breeze,0.5); }
  calendar:backdrop {
    color: @theme_unfocused_text_color_breeze;
    border-color: @unfocused_borders_breeze;
    background-color: @theme_unfocused_base_color_breeze; }

/*************************
 * Check and Radio items *
 *************************/
checkbutton.text-button,
radiobutton.text-button {
  padding: 2px 0;
  outline-offset: 0; }
  checkbutton.text-button label:not(:only-child):first-child,
  radiobutton.text-button label:not(:only-child):first-child {
    margin-left: 4px; }
  checkbutton.text-button label:not(:only-child):last-child,
  radiobutton.text-button label:not(:only-child):last-child {
    margin-right: 4px; }

check,
radio {
  transition: 0.1s;
  margin: 0 4px;
  min-height: 14px;
  min-width: 14px;
  animation-timing-function: cubic-bezier(0.25, 0.46, 0.45, 0.94);
  background-color: @theme_button_background_normal_breeze;
  border: 1px solid alpha(@theme_button_foreground_normal_breeze,0.33);
  -gtk-icon-shadow: none;
  -gtk-icon-palette: fg @theme_fg_color_breeze; }
  check:only-child,
  radio:only-child {
    margin: 0; }
  check:hover,
  radio:hover {
    border: 1px solid @theme_button_decoration_hover_breeze; }
  check:disabled,
  radio:disabled {
    background-color: @insensitive_base_color_breeze;
    border-color: alpha(@insensitive_base_fg_color_breeze,0.33); }
  check:active,
  radio:active {
    background: shade(@theme_base_color_breeze, 0.9); }
  check:focus,
  radio:focus {
    border-color: @theme_button_decoration_focus_breeze; }
  check:indeterminate, check:checked,
  radio:indeterminate,
  radio:checked {
    border-color: @theme_button_decoration_hover_breeze;
    background-color: alpha(@theme_button_decoration_hover_breeze,0.33); }
    check:indeterminate:backdrop, label:backdrop selection:indeterminate, check:checked:backdrop, label:backdrop selection:checked,
    radio:indeterminate:backdrop,
    radio:checked:backdrop {
      background-color: alpha(@theme_unfocused_selected_bg_color_breeze,0.33);
      border-color: @theme_unfocused_selected_bg_color_breeze; }
    check:indeterminate:disabled, label:disabled selection:indeterminate, check:checked:disabled, label:disabled selection:checked,
    radio:indeterminate:disabled,
    radio:checked:disabled {
      background-color: alpha(@insensitive_bg_color_breeze,0.33);
      border-color: @insensitive_bg_color_breeze;
      color: @insensitive_fg_color_breeze;
      -gtk-icon-effect: none; }
  check:indeterminate,
  radio:indeterminate {
    -gtk-icon-source: -gtk-recolor(url("../assets/dash-symbolic.svg")); }
  menu menuitem check, menu menuitem radio {
    margin: 0;
    min-height: 14px;
    min-width: 14px;
    background-color: transparent;
    box-shadow: none;
    -gtk-icon-shadow: none;
    animation: none; }

check {
  border-radius: 1.25mm; }
  check:checked {
    -gtk-icon-source: -gtk-recolor(url("../assets/checkmark-symbolic.svg")); }

radio {
  border-radius: 50%; }
  radio:checked {
    -gtk-icon-source: -gtk-recolor(url("../assets/bullet-symbolic.svg")); }

radio:not(:indeterminate):not(:checked):active:not(:backdrop) {
  -gtk-icon-transform: scale(0); }

check:not(:indeterminate):not(:checked):active:not(:backdrop) {
  -gtk-icon-transform: translate(-4px, 3px) scale(0); }

radio:active,
check:active {
  -gtk-icon-transform: scale(0, 1); }

radio:checked:not(:backdrop), radio:indeterminate:not(:backdrop),
check:checked:not(:backdrop),
check:indeterminate:not(:backdrop) {
  -gtk-icon-transform: unset; }

/*****************
 * Color Chooser *
 *****************/
:selected colorswatch,
headerbar.selection-mode .subtitle:link colorswatch,
headerbar.selection-mode button.subtitle:link colorswatch,
headerbar.selection-mode button.subtitle:visited colorswatch,
headerbar.selection-mode headerbar .subtitle:link colorswatch,
headerbar.selection-mode headerbar button.subtitle:link colorswatch,
headerbar.selection-mode headerbar button.subtitle:visited colorswatch {
  box-shadow: none; }
  :selected colorswatch.overlay,
  headerbar.selection-mode .subtitle:link colorswatch.overlay,
  headerbar.selection-mode button.subtitle:visited colorswatch.overlay, :selected colorswatch.overlay:hover {
    border-color: @theme_selected_fg_color_breeze; }

colorswatch:selected,
headerbar.selection-mode colorswatch.subtitle:link,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode headerbar colorswatch.subtitle:link,
headerbar.selection-mode headerbar button.subtitle:link,
headerbar.selection-mode headerbar button.subtitle:visited {
  box-shadow: none; }

colorswatch.top, colorswatch.bottom, colorswatch.left, colorswatch:first-child:not(.overlay):not(.top), colorswatch.right, colorswatch:last-child:not(.overlay):not(.bottom), colorswatch:only-child:not(.overlay), colorswatch.top > .overlay, colorswatch.bottom > .overlay, colorswatch:first-child:not(.top) > .overlay, colorswatch:last-child:not(.bottom) > .overlay, colorswatch:only-child > .overlay {
  border-radius: 1.25mm; }

colorswatch:hover, colorswatch:hover:selected,
headerbar.selection-mode .subtitle:hover:link,
headerbar.selection-mode button:hover:link,
headerbar.selection-mode button:hover:visited {
  background-image: linear-gradient(135deg, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0) 50%);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.4); }
  colorswatch:hover.color-dark, colorswatch:hover:selected.color-dark,
  headerbar.selection-mode .subtitle:hover.color-dark:link,
  headerbar.selection-mode button.color-dark:link,
  headerbar.selection-mode button.color-dark:visited {
    background-image: linear-gradient(135deg, rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0) 50%); }

colorswatch:backdrop, colorswatch:backdrop:selected colorswatch.color-dark:backdrop,
headerbar.selection-mode .subtitle:backdrop:link colorswatch.color-dark:backdrop,
headerbar.selection-mode button:backdrop:link colorswatch.color-dark:backdrop,
headerbar.selection-mode button:backdrop:visited colorswatch.color-dark:backdrop, colorswatch:backdrop:selected label:backdrop selection.color-dark,
headerbar.selection-mode .subtitle:backdrop:link label:backdrop selection.color-dark,
headerbar.selection-mode button:backdrop:link label:backdrop selection.color-dark,
headerbar.selection-mode button:backdrop:visited label:backdrop selection.color-dark, label:backdrop colorswatch:backdrop:selected selection.color-dark,
label:backdrop headerbar.selection-mode .subtitle:backdrop:link selection.color-dark,
label:backdrop headerbar.selection-mode button:backdrop:link selection.color-dark,
label:backdrop headerbar.selection-mode button:backdrop:visited selection.color-dark,
headerbar.selection-mode label:backdrop .subtitle:backdrop:link selection.color-dark,
headerbar.selection-mode label:backdrop button:backdrop:link selection.color-dark,
headerbar.selection-mode label:backdrop button:backdrop:visited selection.color-dark, colorswatch.color-dark:backdrop:selected,
headerbar.selection-mode .subtitle:backdrop:link,
headerbar.selection-mode button:backdrop:link,
headerbar.selection-mode button:backdrop:visited, label:backdrop selection.color-dark:selected,
label:backdrop headerbar.selection-mode .color-dark.subtitle:link,
label:backdrop headerbar.selection-mode button.subtitle:link,
label:backdrop headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode label:backdrop .color-dark.subtitle:link,
headerbar.selection-mode label:backdrop button.subtitle:link,
headerbar.selection-mode label:backdrop button.subtitle:visited {
  background-image: none;
  box-shadow: none; }

GtkColorEditor colorswatch {
  border-radius: 1.25mm; }
  GtkColorEditor colorswatch:hover {
    background-image: none;
    box-shadow: none; }
  GtkColorEditor colorswatch:backdrop {
    box-shadow: none; }

colorswatch.color-dark {
  color: white;
  outline-color: rgba(0, 0, 0, 0.3); }
  colorswatch.color-dark:backdrop, label:backdrop selection.color-dark {
    color: rgba(255, 255, 255, 0.3); }

colorswatch.color-light {
  color: black;
  outline-color: rgba(255, 255, 255, 0.5); }
  colorswatch.color-light:backdrop, label:backdrop selection.color-light {
    color: rgba(0, 0, 0, 0.3); }

colorswatch overlay,
colorswatch overlay:selected,
colorswatch headerbar.selection-mode overlay.subtitle:link,
colorswatch headerbar.selection-mode button.subtitle:link,
colorswatch headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode colorswatch overlay.subtitle:link,
headerbar.selection-mode colorswatch button.subtitle:link,
headerbar.selection-mode colorswatch button.subtitle:visited,
colorswatch headerbar.selection-mode headerbar overlay.subtitle:link,
colorswatch headerbar.selection-mode headerbar button.subtitle:link,
colorswatch headerbar.selection-mode headerbar button.subtitle:visited,
headerbar.selection-mode headerbar colorswatch overlay.subtitle:link,
headerbar.selection-mode headerbar colorswatch button.subtitle:link,
headerbar.selection-mode headerbar colorswatch button.subtitle:visited {
  border: 1px solid @borders_breeze; }
  colorswatch overlay:hover,
  colorswatch overlay:selected:hover,
  colorswatch headerbar.selection-mode overlay.subtitle:hover:link,
  colorswatch headerbar.selection-mode button:hover:link,
  colorswatch headerbar.selection-mode button:hover:visited,
  headerbar.selection-mode colorswatch overlay.subtitle:hover:link,
  headerbar.selection-mode colorswatch button:hover:link,
  headerbar.selection-mode colorswatch button:hover:visited {
    border-color: @theme_button_decoration_hover_breeze; }

colorswatch#add-color-button {
  border-style: solid;
  border-width: 1px;
  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.125);
  text-shadow: none;
  -gtk-icon-shadow: none;
  color: @theme_button_foreground_normal_breeze;
  border-color: @borders_breeze;
  background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%); }
  colorswatch#add-color-button.suggested-action {
    background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
    border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  colorswatch#add-color-button.destructive-action {
    background-color: alpha(@error_color_breeze,0.2);
    border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  colorswatch#add-color-button:backdrop, label:backdrop selection#add-color-button {
    box-shadow: none;
    background: @theme_button_background_normal_breeze; }
  colorswatch#add-color-button:checked {
    background: alpha(@theme_button_foreground_normal_breeze,0.125);
    box-shadow: none; }
  colorswatch#add-color-button:hover {
    border-color: @theme_button_decoration_hover_breeze; }
    colorswatch#add-color-button:hover:not(:checked):not(:active) {
      background: @theme_button_background_normal_breeze; }
  colorswatch#add-color-button:active {
    box-shadow: none;
    background: alpha(@theme_button_decoration_hover_breeze,0.333); }
  colorswatch#add-color-button:focus {
    border-color: @theme_button_decoration_focus_breeze; }
  colorswatch#add-color-button:disabled, label:disabled selection#add-color-button {
    box-shadow: none;
    color: @theme_button_foreground_insensitive_breeze;
    border-color: @insensitive_borders_breeze;
    background: @theme_button_background_insensitive_breeze; }
    colorswatch#add-color-button:disabled:active, label:disabled selection#add-color-button:active, colorswatch#add-color-button:disabled:checked, label:disabled selection#add-color-button:checked {
      color: @theme_button_foreground_active_insensitive_breeze; }
  colorswatch#add-color-button overlay {
    border-color: transparent;
    background: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    text-shadow: none;
    -gtk-icon-shadow: none; }
    colorswatch#add-color-button overlay.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    colorswatch#add-color-button overlay.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    colorswatch#add-color-button overlay:checked {
      border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
      background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
    colorswatch#add-color-button overlay:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      colorswatch#add-color-button overlay:hover:not(:checked):not(:active) {
        background: unset; }
    colorswatch#add-color-button overlay:active {
      border-color: @theme_button_decoration_hover_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
    colorswatch#add-color-button overlay:focus {
      border-color: @theme_button_decoration_focus_breeze; }

GtkColorButton.button {
  padding: 5px; }
  GtkColorButton.button GtkColorSwatch:first-child:last-child {
    border-radius: 0;
    box-shadow: none; }
    GtkColorButton.button GtkColorSwatch:first-child:last-child:disabled, GtkColorButton.button label:disabled selection:last-child, label:disabled GtkColorButton.button selection:last-child, GtkColorButton.button GtkColorSwatch:first-child:last-child:backdrop, GtkColorButton.button label:backdrop selection:last-child, label:backdrop GtkColorButton.button selection:last-child {
      box-shadow: none; }

/***********
 * Dialogs *
 ***********/
messagedialog.background {
  background-color: @theme_bg_color_breeze; }

messagedialog:backdrop {
  background-color: @theme_unfocused_bg_color_breeze; }

messagedialog .titlebar {
  min-height: 32px;
  background-color: transparent;
  background-image: linear-gradient(to bottom, shade(@theme_titlebar_background_breeze,1.2117647), @theme_titlebar_background_breeze);
  box-shadow: none; }

messagedialog .dialog-action-area {
  padding: 8px; }

messagedialog button {
  margin: 2px; }

filechooser .search-bar {
  background-color: @theme_bg_color_breeze;
  border-color: @theme_bg_color_breeze;
  box-shadow: none; }
  filechooser .search-bar:backdrop, filechooser label:backdrop selection.search-bar, label:backdrop filechooser selection.search-bar {
    background-color: @theme_unfocused_bg_color_breeze;
    border-color: @theme_unfocused_bg_color_breeze;
    color: @theme_unfocused_text_color_breeze; }

filechooser .dialog-action-box {
  border-top: 1px solid @borders_breeze; }
  filechooser .dialog-action-box:backdrop, filechooser label:backdrop selection.dialog-action-box, label:backdrop filechooser selection.dialog-action-box {
    border-top-color: @unfocused_borders_breeze; }

filechooser #pathbarbox {
  background-color: @theme_bg_color_breeze;
  border-bottom: 1px solid @borders_breeze; }

/***************
 * Header bars *
 ***************/

headerbar {
  padding: 0px 6px;
  border-width: 0px 0px 1px 0px;
  border-radius: 6px 6px 0px 0px;
  border-style: solid;
  border-color: @borders_breeze;
  color: @theme_titlebar_foreground_breeze;
  background-image: none;
  background-color: @theme_titlebar_background_breeze;
  border-top: 1px solid lighter(@theme_titlebar_background_breeze); }
  
  headerbar:backdrop {
    background-image: none;
    background-color: @theme_titlebar_background_backdrop_breeze;
    color: @theme_titlebar_foreground_backdrop_breeze;
    border-top: 1px solid lighter(@theme_titlebar_background_backdrop_breeze);
    box-shadow: none; }
  
  headerbar label {
    font-weight: normal; }
    
    headerbar label:backdrop {
      color: @theme_titlebar_foreground_backdrop_breeze; }
  
  headerbar .path-bar button {
    color: @theme_titlebar_foreground_breeze;
    font-weight: normal; }
    
    headerbar .path-bar button:backdrop {
      color: @theme_titlebar_foreground_backdrop_breeze; }
  
  headerbar .linked button {
    box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.125);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    border-color: @borders_breeze;
    background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%); }
    
    headerbar .linked button.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    
    headerbar .linked button.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    
    headerbar .linked button:backdrop {
      box-shadow: none;
      background: @theme_button_background_normal_breeze; }
    
    headerbar .linked button:checked {
      background: alpha(@theme_button_foreground_normal_breeze,0.125);
      box-shadow: none; }
    
    headerbar .linked button:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      
      headerbar .linked button:hover:not(:checked):not(:active) {
        background: @theme_button_background_normal_breeze; }
    
    headerbar .linked button:active {
      box-shadow: none;
      background: alpha(@theme_button_decoration_hover_breeze,0.333); }
    
    headerbar .linked button:focus {
      border-color: @theme_button_decoration_focus_breeze; }
    
    headerbar .linked button:disabled {
      box-shadow: none;
      color: @theme_button_foreground_insensitive_breeze;
      border-color: @insensitive_borders_breeze;
      background: @theme_button_background_insensitive_breeze; }
      
      headerbar .linked button:disabled:active,
      headerbar .linked button:disabled:checked {
        color: @theme_button_foreground_active_insensitive_breeze; }
  
  headerbar button {
    border-color: transparent;
    background: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: none;
    color: @theme_titlebar_foreground_breeze; }
    
    headerbar button.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    
    headerbar button.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    
    headerbar button:checked {
      border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
      background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
    
    headerbar button:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      
      headerbar button:hover:not(:checked):not(:active) {
        background: unset; }
    
    headerbar button:active {
      border-color: @theme_button_decoration_hover_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
    
    headerbar button:focus {
      border-color: @theme_button_decoration_focus_breeze; }
    
    headerbar button:hover {
      color: @theme_titlebar_foreground_breeze; }
    
    headerbar button:backdrop {
      background-image: none;
      background-color: @theme_titlebar_background_backdrop_breeze;
      color: @theme_titlebar_foreground_backdrop_breeze; }
    
    headerbar button.flat:backdrop,
    headerbar label:backdrop selection.flat,
    label:backdrop headerbar selection.flat,
    headerbar label:disabled selection.flat:backdrop,
    label:disabled headerbar selection.flat:backdrop,
    headerbar button:disabled:backdrop {
      background-image: none;
      background-color: @theme_titlebar_background_backdrop_breeze;
      color: @theme_titlebar_foreground_backdrop_breeze;
      border-color: transparent; }
    
    headerbar button.flat:disabled,
    headerbar label:disabled selection.flat,
    label:disabled headerbar selection.flat {
      color: @theme_titlebar_foreground_insensitive_breeze; }
    
    headerbar button:disabled {
      background-color: transparent;
      background-image: none;
      border-color: transparent;
      color: @theme_titlebar_foreground_insensitive_breeze; }
  
  headerbar .title {
    font-weight: normal;
    padding: 0px 12px; }
    
    headerbar .title:backdrop,
    headerbar label:backdrop selection.title,
    label:backdrop headerbar selection.title {
      color: @theme_titlebar_foreground_backdrop_breeze; }
  
  headerbar .subtitle {
    font-size: smaller;
    padding: 0 12px; }
    
    headerbar .subtitle:backdrop,
    headerbar label:backdrop selection.subtitle,
    label:backdrop headerbar selection.subtitle {
      color: @theme_titlebar_foreground_backdrop_breeze; }
  
  headerbar separator {
    border-width: 0px;
    background-color: transparent;
    background-image: none;
    border-color: transparent; }
  
  headerbar.selection-mode,
  headerbar.selection-mode headerbar {
    background-color: mix(@theme_titlebar_background,@theme_button_decoration_focus,0.5); }
    
    headerbar.selection-mode separator,
    headerbar.selection-mode headerbar separator {
      background-color: @theme_button_decoration_focus_breeze; }
    
    headerbar.selection-mode button:not(.titlebutton),
    headerbar.selection-mode headerbar button:not(.titlebutton) {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.5); }
      
      headerbar.selection-mode button:not(.titlebutton):active,
      headerbar.selection-mode button:not(.titlebutton):focus,
      headerbar.selection-mode headerbar button:not(.titlebutton):active,
      headerbar.selection-mode headerbar button:not(.titlebutton):focus {
        background-color: @theme_button_decoration_focus_breeze; }
    
    headerbar.selection-mode .selection-menu,
    headerbar.selection-mode headerbar .selection-menu {
      padding: 4px 6px; }
      
      headerbar.selection-mode .selection-menu GtkArrow,
      headerbar.selection-mode headerbar .selection-menu GtkArrow {
        -GtkArrow-arrow-scaling: 1; }
      
      headerbar.selection-mode .selection-menu .arrow,
      headerbar.selection-mode headerbar .selection-menu .arrow {
        -gtk-icon-source: -gtk-icontheme("go-down-symbolic");
        -gtk-icon-shadow: none; }
  .tiled headerbar, .maximized headerbar {
    border-radius: 0; }

headerbar entry,
headerbar spinbutton,
headerbar separator,
headerbar button {
  margin-top: 8px;
  margin-bottom: 8px; }

/**************
 * GtkInfoBar *
 **************/
infobar {
  border-style: none;
  border-bottom: 1px solid @borders_breeze;
  background-color: @theme_bg_color_breeze;
  background-image: none; }
  infobar:backdrop {
    border-bottom: 1px solid @unfocused_borders_breeze; }

.info,
.question,
.warning,
.error {
  background-color: @theme_bg_color_breeze;
  background-image: none;
  color: @warning_color_breeze;
  text-shadow: none; }
  .info:backdrop, label:backdrop selection.info,
  .question:backdrop,
  label:backdrop selection.question,
  .warning:backdrop,
  label:backdrop selection.warning,
  .error:backdrop,
  label:backdrop selection.error {
    background-color: @theme_unfocused_bg_color_breeze;
    color: @warning_color_backdrop_breeze; }
  .info button,
  .question button,
  .warning button,
  .error button {
    box-shadow: none;
    background-image: none;
    background-color: alpha(@warning_color_breeze,0.5);
    border-color: alpha(@warning_color_breeze,0.5);
    color: @theme_button_foreground_normal_breeze; }
    .info button:hover,
    .question button:hover,
    .warning button:hover,
    .error button:hover {
      background-color: alpha(@warning_color_breeze,0.25);
      border-color: @warning_color_breeze; }
    .info button:active, .info button:checked,
    .question button:active,
    .question button:checked,
    .warning button:active,
    .warning button:checked,
    .error button:active,
    .error button:checked {
      background-color: @warning_color_breeze;
      color: @theme_bg_color_breeze;
      border-color: @warning_color_breeze; }
    .info button:disabled,
    .question button:disabled,
    .warning button:disabled,
    .error button:disabled {
      background-color: alpha(@warning_color_insensitive_breeze,0.5);
      border-color: alpha(@warning_color_insensitive_breeze,0.5);
      color: @theme_button_foreground_insensitive_breeze; }
    .info button:backdrop,
    .question button:backdrop,
    .warning button:backdrop,
    .error button:backdrop {
      background-color: alpha(@warning_color_backdrop_breeze,0.5);
      border-color: alpha(@warning_color_backdrop_breeze,0.5);
      color: @theme_button_foreground_backdrop_breeze; }
      .info button:backdrop:active, .info button:backdrop:checked,
      .question button:backdrop:active,
      .question button:backdrop:checked,
      .warning button:backdrop:active,
      .warning button:backdrop:checked,
      .error button:backdrop:active,
      .error button:backdrop:checked {
        background-color: @warning_color_backdrop_breeze;
        color: @theme_unfocused_bg_color_breeze;
        border-color: @warning_color_backdrop_breeze; }
      .info button:backdrop:disabled,
      .question button:backdrop:disabled,
      .warning button:backdrop:disabled,
      .error button:backdrop:disabled {
        background-color: alpha(@warning_color_insensitive_backdrop_breeze,0.5);
        border-color: alpha(@warning_color_insensitive_backdrop_breeze,0.5);
        color: @theme_button_foreground_backdrop_insensitive_breeze; }
      .info button:backdrop:disabled:active, .info button:backdrop:disabled:checked,
      .question button:backdrop:disabled:active,
      .question button:backdrop:disabled:checked,
      .warning button:backdrop:disabled:active,
      .warning button:backdrop:disabled:checked,
      .error button:backdrop:disabled:active,
      .error button:backdrop:disabled:checked {
        background-color: @warning_color_insensitive_backdrop_breeze;
        color: @insensitive_unfocused_bg_color_breeze;
        border-color: @warning_color_insensitive_backdrop_breeze; }

/*********
 * Links *
 *********/
button:link > label,
button:visited > label,
headerbar.selection-mode .subtitle:link,
headerbar.selection-mode button.subtitle:link,
headerbar.selection-mode button.subtitle:visited,
headerbar.selection-mode headerbar .subtitle:link,
headerbar.selection-mode headerbar button.subtitle:link,
headerbar.selection-mode headerbar button.subtitle:visited,
*:link,
button:link,
button:visited {
  color: @link_color_breeze; }
  button:link > label:visited,
  button:visited > label:visited,
  headerbar.selection-mode .subtitle:visited:link,
  headerbar.selection-mode button:visited:link,
  headerbar.selection-mode button:visited,
  *:link:visited,
  button:visited {
    color: @link_visited_color_breeze; }
    *:selected button:link > label:visited,
    *:selected button:visited > label:visited, button:selected:link button:link > label:visited,
    button:selected:link button:visited > label:visited,
    button:selected:visited button:link > label:visited,
    button:selected:visited button:visited > label:visited,
    button:selected:visited button:link > label:visited,
    button:selected:visited button:visited > label:visited,
    headerbar.selection-mode .subtitle:link button:link > label:visited,
    headerbar.selection-mode .subtitle:link button:visited > label:visited,
    headerbar.selection-mode button.subtitle:link button:link > label:visited,
    headerbar.selection-mode button.subtitle:link button:visited > label:visited,
    headerbar.selection-mode button.subtitle:visited button:link > label:visited,
    headerbar.selection-mode button.subtitle:visited button:visited > label:visited,
    *:selected headerbar.selection-mode .subtitle:visited:link,
    *:selected headerbar.selection-mode button:visited:link,
    *:selected headerbar.selection-mode button:visited,
    button:selected:link headerbar.selection-mode .subtitle:visited:link,
    button:selected:visited headerbar.selection-mode .subtitle:visited:link,
    button:selected:link headerbar.selection-mode button:visited:link,
    button:selected:visited headerbar.selection-mode button:visited:link,
    button:selected:link headerbar.selection-mode button:visited,
    button:selected:visited headerbar.selection-mode button:visited,
    button:selected:visited headerbar.selection-mode .subtitle:visited:link,
    button:selected:visited headerbar.selection-mode button:visited:link,
    button:selected:visited headerbar.selection-mode button:visited,
    headerbar.selection-mode *:selected .subtitle:visited:link,
    headerbar.selection-mode *:selected button:visited:link,
    headerbar.selection-mode *:selected button:visited,
    headerbar.selection-mode button:selected:link .subtitle:visited:link,
    headerbar.selection-mode button:selected:visited .subtitle:visited:link,
    headerbar.selection-mode button:selected:link button:visited:link,
    headerbar.selection-mode button:selected:visited button:visited:link,
    headerbar.selection-mode button:selected:link button:visited,
    headerbar.selection-mode button:selected:visited button:visited,
    headerbar.selection-mode button:selected:visited .subtitle:visited:link,
    headerbar.selection-mode button:selected:visited button:visited:link,
    headerbar.selection-mode button:selected:visited button:visited,
    headerbar.selection-mode .subtitle:link .subtitle:visited:link,
    headerbar.selection-mode button.subtitle:link .subtitle:visited:link,
    headerbar.selection-mode button.subtitle:visited .subtitle:visited:link,
    headerbar.selection-mode .subtitle:link button:visited:link,
    headerbar.selection-mode button.subtitle:link button:visited:link,
    headerbar.selection-mode button.subtitle:visited button:visited:link,
    headerbar.selection-mode .subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:visited button:visited, *:selected *:link:visited, *:selected button:visited:link,
    *:selected button:visited, button:selected:link *:link:visited,
    button:selected:visited *:link:visited, button:selected:link button:visited:link,
    button:selected:visited button:visited:link,
    button:selected:link button:visited,
    button:selected:visited button:visited,
    button:selected:visited *:link:visited,
    button:selected:visited button:visited:link,
    button:selected:visited button:visited, *:selected button:link:visited,
    *:selected button:visited, button:selected:link button:link:visited,
    button:selected:visited button:link:visited,
    button:selected:link button:visited,
    button:selected:visited button:visited,
    button:selected:visited button:link:visited,
    button:selected:visited button:visited,
    headerbar.selection-mode .subtitle:link *:link:visited,
    headerbar.selection-mode button.subtitle:link *:link:visited,
    headerbar.selection-mode button.subtitle:visited *:link:visited,
    headerbar.selection-mode .subtitle:link button:visited:link,
    headerbar.selection-mode button.subtitle:link button:visited:link,
    headerbar.selection-mode button.subtitle:visited button:visited:link,
    headerbar.selection-mode .subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:visited button:visited,
    headerbar.selection-mode .subtitle:link button:link:visited,
    headerbar.selection-mode button.subtitle:link button:link:visited,
    headerbar.selection-mode button.subtitle:visited button:link:visited,
    headerbar.selection-mode .subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:link button:visited,
    headerbar.selection-mode button.subtitle:visited button:visited {
      color: mix(@theme_selected_fg_color_breeze,@theme_selected_bg_color_breeze,0.6); }
  button:link > label:hover,
  button:visited > label:hover,
  headerbar.selection-mode .subtitle:hover:link,
  headerbar.selection-mode button:hover:link,
  headerbar.selection-mode button:hover:visited,
  *:link:hover,
  button:hover:link,
  button:hover:visited {
    color: shade(@link_color_breeze,1.1); }
    *:selected button:link > label:hover,
    *:selected button:visited > label:hover, button:selected:link button:link > label:hover,
    button:selected:link button:visited > label:hover,
    button:selected:visited button:link > label:hover,
    button:selected:visited button:visited > label:hover,
    button:selected:visited button:link > label:hover,
    button:selected:visited button:visited > label:hover,
    headerbar.selection-mode .subtitle:link button:link > label:hover,
    headerbar.selection-mode .subtitle:link button:visited > label:hover,
    headerbar.selection-mode button.subtitle:link button:link > label:hover,
    headerbar.selection-mode button.subtitle:link button:visited > label:hover,
    headerbar.selection-mode button.subtitle:visited button:link > label:hover,
    headerbar.selection-mode button.subtitle:visited button:visited > label:hover,
    *:selected headerbar.selection-mode .subtitle:hover:link,
    *:selected headerbar.selection-mode button:hover:link,
    *:selected headerbar.selection-mode button:hover:visited,
    button:selected:link headerbar.selection-mode .subtitle:hover:link,
    button:selected:visited headerbar.selection-mode .subtitle:hover:link,
    button:selected:link headerbar.selection-mode button:hover:link,
    button:selected:visited headerbar.selection-mode button:hover:link,
    button:selected:link headerbar.selection-mode button:hover:visited,
    button:selected:visited headerbar.selection-mode button:hover:visited,
    button:selected:visited headerbar.selection-mode .subtitle:hover:link,
    button:selected:visited headerbar.selection-mode button:hover:link,
    button:selected:visited headerbar.selection-mode button:hover:visited,
    headerbar.selection-mode *:selected .subtitle:hover:link,
    headerbar.selection-mode *:selected button:hover:link,
    headerbar.selection-mode *:selected button:hover:visited,
    headerbar.selection-mode button:selected:link .subtitle:hover:link,
    headerbar.selection-mode button:selected:visited .subtitle:hover:link,
    headerbar.selection-mode button:selected:link button:hover:link,
    headerbar.selection-mode button:selected:visited button:hover:link,
    headerbar.selection-mode button:selected:link button:hover:visited,
    headerbar.selection-mode button:selected:visited button:hover:visited,
    headerbar.selection-mode button:selected:visited .subtitle:hover:link,
    headerbar.selection-mode button:selected:visited button:hover:link,
    headerbar.selection-mode button:selected:visited button:hover:visited,
    headerbar.selection-mode .subtitle:link .subtitle:hover:link,
    headerbar.selection-mode button.subtitle:link .subtitle:hover:link,
    headerbar.selection-mode button.subtitle:visited .subtitle:hover:link,
    headerbar.selection-mode .subtitle:link button:hover:link,
    headerbar.selection-mode button.subtitle:link button:hover:link,
    headerbar.selection-mode button.subtitle:visited button:hover:link,
    headerbar.selection-mode .subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:visited button:hover:visited, *:selected *:link:hover, *:selected button:hover:link,
    *:selected button:hover:visited, button:selected:link *:link:hover,
    button:selected:visited *:link:hover, button:selected:link button:hover:link,
    button:selected:visited button:hover:link,
    button:selected:link button:hover:visited,
    button:selected:visited button:hover:visited,
    button:selected:visited *:link:hover,
    button:selected:visited button:hover:link,
    button:selected:visited button:hover:visited, *:selected button:link:hover,
    *:selected button:hover:visited, button:selected:link button:link:hover,
    button:selected:visited button:link:hover,
    button:selected:link button:hover:visited,
    button:selected:visited button:hover:visited,
    button:selected:visited button:link:hover,
    button:selected:visited button:hover:visited,
    headerbar.selection-mode .subtitle:link *:link:hover,
    headerbar.selection-mode button.subtitle:link *:link:hover,
    headerbar.selection-mode button.subtitle:visited *:link:hover,
    headerbar.selection-mode .subtitle:link button:hover:link,
    headerbar.selection-mode button.subtitle:link button:hover:link,
    headerbar.selection-mode button.subtitle:visited button:hover:link,
    headerbar.selection-mode .subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:visited button:hover:visited,
    headerbar.selection-mode .subtitle:link button:link:hover,
    headerbar.selection-mode button.subtitle:link button:link:hover,
    headerbar.selection-mode button.subtitle:visited button:link:hover,
    headerbar.selection-mode .subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:link button:hover:visited,
    headerbar.selection-mode button.subtitle:visited button:hover:visited {
      color: mix(@theme_selected_fg_color_breeze,@theme_selected_bg_color_breeze,0.9); }
  button:link > label:active,
  button:visited > label:active,
  headerbar.selection-mode .subtitle:active:link,
  headerbar.selection-mode button:active:link,
  headerbar.selection-mode button:active:visited,
  *:link:active,
  button:active:link,
  button:active:visited {
    color: @link_color_breeze; }
    *:selected button:link > label:active,
    *:selected button:visited > label:active, button:selected:link button:link > label:active,
    button:selected:link button:visited > label:active,
    button:selected:visited button:link > label:active,
    button:selected:visited button:visited > label:active,
    button:selected:visited button:link > label:active,
    button:selected:visited button:visited > label:active,
    headerbar.selection-mode .subtitle:link button:link > label:active,
    headerbar.selection-mode .subtitle:link button:visited > label:active,
    headerbar.selection-mode button.subtitle:link button:link > label:active,
    headerbar.selection-mode button.subtitle:link button:visited > label:active,
    headerbar.selection-mode button.subtitle:visited button:link > label:active,
    headerbar.selection-mode button.subtitle:visited button:visited > label:active,
    *:selected headerbar.selection-mode .subtitle:active:link,
    *:selected headerbar.selection-mode button:active:link,
    *:selected headerbar.selection-mode button:active:visited,
    button:selected:link headerbar.selection-mode .subtitle:active:link,
    button:selected:visited headerbar.selection-mode .subtitle:active:link,
    button:selected:link headerbar.selection-mode button:active:link,
    button:selected:visited headerbar.selection-mode button:active:link,
    button:selected:link headerbar.selection-mode button:active:visited,
    button:selected:visited headerbar.selection-mode button:active:visited,
    button:selected:visited headerbar.selection-mode .subtitle:active:link,
    button:selected:visited headerbar.selection-mode button:active:link,
    button:selected:visited headerbar.selection-mode button:active:visited,
    headerbar.selection-mode *:selected .subtitle:active:link,
    headerbar.selection-mode *:selected button:active:link,
    headerbar.selection-mode *:selected button:active:visited,
    headerbar.selection-mode button:selected:link .subtitle:active:link,
    headerbar.selection-mode button:selected:visited .subtitle:active:link,
    headerbar.selection-mode button:selected:link button:active:link,
    headerbar.selection-mode button:selected:visited button:active:link,
    headerbar.selection-mode button:selected:link button:active:visited,
    headerbar.selection-mode button:selected:visited button:active:visited,
    headerbar.selection-mode button:selected:visited .subtitle:active:link,
    headerbar.selection-mode button:selected:visited button:active:link,
    headerbar.selection-mode button:selected:visited button:active:visited,
    headerbar.selection-mode .subtitle:link .subtitle:active:link,
    headerbar.selection-mode button.subtitle:link .subtitle:active:link,
    headerbar.selection-mode button.subtitle:visited .subtitle:active:link,
    headerbar.selection-mode .subtitle:link button:active:link,
    headerbar.selection-mode button.subtitle:link button:active:link,
    headerbar.selection-mode button.subtitle:visited button:active:link,
    headerbar.selection-mode .subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:visited button:active:visited, *:selected *:link:active, *:selected button:active:link,
    *:selected button:active:visited, button:selected:link *:link:active,
    button:selected:visited *:link:active, button:selected:link button:active:link,
    button:selected:visited button:active:link,
    button:selected:link button:active:visited,
    button:selected:visited button:active:visited,
    button:selected:visited *:link:active,
    button:selected:visited button:active:link,
    button:selected:visited button:active:visited, *:selected button:link:active,
    *:selected button:active:visited, button:selected:link button:link:active,
    button:selected:visited button:link:active,
    button:selected:link button:active:visited,
    button:selected:visited button:active:visited,
    button:selected:visited button:link:active,
    button:selected:visited button:active:visited,
    headerbar.selection-mode .subtitle:link *:link:active,
    headerbar.selection-mode button.subtitle:link *:link:active,
    headerbar.selection-mode button.subtitle:visited *:link:active,
    headerbar.selection-mode .subtitle:link button:active:link,
    headerbar.selection-mode button.subtitle:link button:active:link,
    headerbar.selection-mode button.subtitle:visited button:active:link,
    headerbar.selection-mode .subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:visited button:active:visited,
    headerbar.selection-mode .subtitle:link button:link:active,
    headerbar.selection-mode button.subtitle:link button:link:active,
    headerbar.selection-mode button.subtitle:visited button:link:active,
    headerbar.selection-mode .subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:link button:active:visited,
    headerbar.selection-mode button.subtitle:visited button:active:visited {
      color: mix(@theme_selected_fg_color_breeze,@theme_selected_bg_color_breeze,0.8); }
  button:link > label:backdrop,
  button:visited > label:backdrop,
  headerbar.selection-mode .subtitle:backdrop:link,
  headerbar.selection-mode button:backdrop:link,
  headerbar.selection-mode button:backdrop:visited,
  headerbar.selection-mode label:backdrop selection.subtitle:link,
  headerbar.selection-mode label:backdrop button.subtitle:link,
  headerbar.selection-mode label:backdrop button.subtitle:visited,
  label:backdrop headerbar.selection-mode selection.subtitle:link,
  label:backdrop headerbar.selection-mode button.subtitle:link,
  label:backdrop headerbar.selection-mode button.subtitle:visited,
  *:link:backdrop,
  button:backdrop:link,
  button:backdrop:visited,
  label:backdrop selection:link,
  *:link:backdrop:hover,
  *:link:backdrop:hover:selected {
    color: @theme_unfocused_selected_bg_color_breeze; }
  button:link > label:selected,
  button:visited > label:selected,
  headerbar.selection-mode .subtitle:selected:link,
  headerbar.selection-mode button:selected:link,
  headerbar.selection-mode button:selected:visited,
  headerbar.selection-mode button:link > label.subtitle:link,
  headerbar.selection-mode button:visited > label.subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode .subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode headerbar .subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:visited, *:selected button:link > label,
  *:selected button:visited > label, button:selected:link button:link > label,
  button:selected:link button:visited > label,
  button:selected:visited button:link > label,
  button:selected:visited button:visited > label,
  button:selected:visited button:link > label,
  button:selected:visited button:visited > label,
  headerbar.selection-mode .subtitle:link button:link > label,
  headerbar.selection-mode .subtitle:link button:visited > label,
  headerbar.selection-mode button.subtitle:link button:link > label,
  headerbar.selection-mode button.subtitle:link button:visited > label,
  headerbar.selection-mode button.subtitle:visited button:link > label,
  headerbar.selection-mode button.subtitle:visited button:visited > label,
  *:selected headerbar.selection-mode .subtitle:link,
  *:selected headerbar.selection-mode button.subtitle:link,
  *:selected headerbar.selection-mode button.subtitle:visited,
  button:selected:link headerbar.selection-mode .subtitle:link,
  button:selected:visited headerbar.selection-mode .subtitle:link,
  button:selected:link headerbar.selection-mode button.subtitle:link,
  button:selected:visited headerbar.selection-mode button.subtitle:link,
  button:selected:link headerbar.selection-mode button.subtitle:visited,
  button:selected:visited headerbar.selection-mode button.subtitle:visited,
  button:selected:visited headerbar.selection-mode .subtitle:link,
  button:selected:visited headerbar.selection-mode button.subtitle:link,
  button:selected:visited headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode *:selected .subtitle:link,
  headerbar.selection-mode *:selected button.subtitle:link,
  headerbar.selection-mode *:selected button.subtitle:visited,
  headerbar.selection-mode button:selected:link .subtitle:link,
  headerbar.selection-mode button:selected:visited .subtitle:link,
  headerbar.selection-mode button:selected:link button.subtitle:link,
  headerbar.selection-mode button:selected:visited button.subtitle:link,
  headerbar.selection-mode button:selected:link button.subtitle:visited,
  headerbar.selection-mode button:selected:visited button.subtitle:visited,
  headerbar.selection-mode button:selected:visited .subtitle:link,
  headerbar.selection-mode button:selected:visited button.subtitle:link,
  headerbar.selection-mode button:selected:visited button.subtitle:visited,
  headerbar.selection-mode .subtitle:link .subtitle:link,
  headerbar.selection-mode button.subtitle:link .subtitle:link,
  headerbar.selection-mode button.subtitle:visited .subtitle:link,
  headerbar.selection-mode .subtitle:link button.subtitle:link,
  headerbar.selection-mode button.subtitle:link button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited button.subtitle:link,
  headerbar.selection-mode .subtitle:link button.subtitle:visited,
  headerbar.selection-mode button.subtitle:link button.subtitle:visited,
  headerbar.selection-mode button.subtitle:visited button.subtitle:visited,
  *:link:selected,
  button:selected:link,
  button:selected:visited,
  button:link:selected,
  button:selected:visited,
  headerbar.selection-mode .subtitle:link,
  headerbar.selection-mode button.subtitle:link,
  headerbar.selection-mode button.subtitle:visited,
  headerbar.selection-mode headerbar .subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:link,
  headerbar.selection-mode headerbar button.subtitle:visited, *:selected *:link, *:selected button:link,
  *:selected button:visited, button:selected:link *:link,
  button:selected:visited *:link, button:selected:link button:link,
  button:selected:visited button:link,
  button:selected:link button:visited,
  button:selected:visited button:visited,
  button:selected:visited *:link,
  button:selected:visited button:link,
  button:selected:visited button:visited, *:selected button:link,
  *:selected button:visited, button:selected:link button:link,
  button:selected:visited button:link,
  button:selected:link button:visited,
  button:selected:visited button:visited,
  button:selected:visited button:link,
  button:selected:visited button:visited,
  headerbar.selection-mode .subtitle:link *:link,
  headerbar.selection-mode button.subtitle:link *:link,
  headerbar.selection-mode button.subtitle:visited *:link,
  headerbar.selection-mode .subtitle:link button:link,
  headerbar.selection-mode button.subtitle:link button:link,
  headerbar.selection-mode button.subtitle:visited button:link,
  headerbar.selection-mode .subtitle:link button:visited,
  headerbar.selection-mode button.subtitle:link button:visited,
  headerbar.selection-mode button.subtitle:visited button:visited,
  headerbar.selection-mode .subtitle:link button:link,
  headerbar.selection-mode button.subtitle:link button:link,
  headerbar.selection-mode button.subtitle:visited button:link,
  headerbar.selection-mode .subtitle:link button:visited,
  headerbar.selection-mode button.subtitle:link button:visited,
  headerbar.selection-mode button.subtitle:visited button:visited {
    color: mix(@theme_selected_fg_color_breeze,@theme_selected_bg_color_breeze,0.8); }

button:link,
button:visited {
  text-shadow: none; }
  button:link:hover, button:link:active, button:link:checked,
  button:visited:hover,
  button:visited:active,
  button:visited:checked {
    text-shadow: none; }
  button:link > label,
  button:visited > label {
    text-decoration-line: underline; }

/*********
 * Lists *
 *********/
list {
  color: @theme_fg_color_breeze;
  background: @theme_base_color_breeze;
  border-radius: 3px; }
  list.content {
    border: 1px solid @borders_breeze; }
  list row {
    background: @theme_base_color_breeze;
    padding: 2px; }

row.activatable.has-open-popup, row.activatable:hover {
  background-color: @theme_selected_bg_color_breeze; }

row.activatable:active {
  box-shadow: none;
  background-color: @theme_selected_bg_color_breeze; }

row.activatable:selected:active,
headerbar.selection-mode .activatable.subtitle:active:link,
headerbar.selection-mode button.activatable.subtitle:active:visited {
  box-shadow: none;
  background-color: @theme_selected_bg_color_breeze; }

row.activatable:selected.has-open-popup,
headerbar.selection-mode .activatable.has-open-popup.subtitle:link,
headerbar.selection-mode button.activatable.has-open-popup.subtitle:visited, row.activatable:selected:hover,
headerbar.selection-mode .activatable.subtitle:hover:link,
headerbar.selection-mode button.activatable.subtitle:hover:visited {
  background-color: @theme_selected_bg_color_breeze; }

row.activatable:selected:backdrop {
  background-color: @theme_unfocused_selected_bg_color_alt_breeze; }

/*********
 * Menus *
 *********/
menubar,
.menubar {
  -GtkWidget-window-dragging: true;
  padding: 0px;
  box-shadow: none;
  border-style: none;
  background-color: @theme_header_background_breeze; }
  menubar:backdrop,
  .menubar:backdrop,
  label:backdrop selection.menubar {
    background-color: @theme_header_background_backdrop_breeze; }
  menubar > menuitem,
  .menubar > menuitem {
    min-height: 4.5mm;
    padding: 1.25mm 2.5mm; }
    menubar > menuitem:hover,
    .menubar > menuitem:hover {
      background-color: @theme_button_decoration_focus_breeze;
      color: @theme_button_foreground_active_breeze; }
    menubar > menuitem:disabled,
    .menubar > menuitem:disabled {
      color: @insensitive_fg_color_breeze;
      box-shadow: none; }
      menubar > menuitem:disabled:backdrop,
      .menubar > menuitem:disabled:backdrop {
        background-color: @theme_unfocused_bg_color_breeze;
        color: @insensitive_unfocused_fg_color_breeze; }
    menubar > menuitem:backdrop,
    .menubar > menuitem:backdrop {
      background-color: @theme_unfocused_bg_color_breeze;
      color: @theme_unfocused_fg_color_breeze; }

menu,
.menu {
  padding: 1mm;
  background-color: mix(@theme_bg_color_breeze,@theme_base_color_breeze,0.3);
  border-radius: 1.25mm; }
  menu separator,
  .menu separator {
    color: @borders_breeze;
    margin: 0.75mm 0; }
  menu menuitem,
  .menu menuitem {
    text-shadow: none;
    min-height: 4.5mm;
    min-width: 10mm;
    padding: 0.75mm 2mm;
    border: 1px solid transparent; }
    menu menuitem:hover,
    .menu menuitem:hover {
      background-color: alpha(@theme_selected_bg_color_breeze,0.3);
      border: 1px solid @theme_button_decoration_focus_breeze;
      border-radius: 1.25mm; }
    menu menuitem:disabled,
    .menu menuitem:disabled {
      color: @insensitive_fg_color_breeze; }
      menu menuitem:disabled:backdrop,
      .menu menuitem:disabled:backdrop {
        color: @insensitive_unfocused_fg_color_breeze; }
    menu menuitem:backdrop, menu menuitem:backdrop:hover,
    .menu menuitem:backdrop,
    .menu menuitem:backdrop:hover {
      color: @theme_unfocused_fg_color_breeze;
      background-color: @theme_unfocused_bg_color_breeze; }
    menu menuitem arrow,
    .menu menuitem arrow {
      min-height: 4mm;
      min-width: 4mm; }
      menu menuitem arrow:dir(ltr),
      .menu menuitem arrow:dir(ltr) {
        -gtk-icon-source: -gtk-icontheme("go-next-symbolic");
        margin-left: 2.5mm; }
      menu menuitem arrow:dir(rtl),
      .menu menuitem arrow:dir(rtl) {
        -gtk-icon-source: -gtk-icontheme("go-next-rtl-symbolic");
        margin-right: 2.5mm; }
  menu > arrow,
  .menu > arrow {
    min-height: 4mm;
    min-width: 4mm;
    padding: 1mm;
    background-color: transparent;
    border-radius: 0; }
    menu > arrow.top,
    .menu > arrow.top {
      margin-top: -1.5mm;
      border: none;
      -gtk-icon-source: -gtk-icontheme("go-up-symbolic"); }
    menu > arrow.bottom,
    .menu > arrow.bottom {
      margin-bottom: -1.5mm;
      border: none;
      -gtk-icon-source: -gtk-icontheme("go-down-symbolic"); }
    menu > arrow:hover,
    .menu > arrow:hover {
      color: @theme_button_decoration_hover_breeze; }
    menu > arrow:active,
    .menu > arrow:active {
      color: @theme_button_decoration_focus_breeze; }
    menu > arrow:backdrop,
    .menu > arrow:backdrop {
      background-color: @theme_unfocused_bg_color_breeze; }
    menu > arrow:disabled,
    .menu > arrow:disabled {
      color: transparent;
      background-color: transparent;
      border-color: transparent; }

menuitem accelerator {
  color: alpha(currentColor,0.55); }

menuitem check:dir(ltr),
menuitem radio:dir(ltr) {
  margin-right: 1.5mm; }

menuitem check:dir(rtl),
menuitem radio:dir(rtl) {
  margin-left: 1.5mm; }

/***************
* Popovers   *
***************/
popover {
  padding: 1mm; }

/* menu buttons */
modelbutton.flat, popover.background checkbutton.flat,
popover.background radiobutton.flat,
.menuitem.button.flat,
popover.background checkbutton.button,
popover.background radiobutton.button {
  min-height: 4mm;
  padding: 1.75mm 2mm;
  border: 1px solid transparent;
  color: @theme_fg_color_breeze; }
  modelbutton.flat:hover, popover.background checkbutton.flat:hover,
  popover.background radiobutton.flat:hover,
  .menuitem.button.flat:hover,
  popover.background checkbutton.button:hover,
  popover.background radiobutton.button:hover {
    background-color: alpha(@theme_selected_bg_color_breeze,0.3);
    border: 1px solid @theme_button_decoration_focus_breeze;
    border-radius: 4px; }
  modelbutton.flat:selected, popover.background checkbutton.flat:selected,
  popover.background radiobutton.flat:selected,
  headerbar.selection-mode .flat.subtitle:link,
  headerbar.selection-mode popover.background checkbutton.subtitle:link,
  popover.background headerbar.selection-mode checkbutton.subtitle:link,
  headerbar.selection-mode popover.background radiobutton.subtitle:link,
  popover.background headerbar.selection-mode radiobutton.subtitle:link,
  headerbar.selection-mode button.flat.subtitle:visited,
  .menuitem.button.flat:selected,
  popover.background checkbutton.button:selected,
  popover.background radiobutton.button:selected {
    background-color: @theme_button_decoration_focus_breeze;
    color: @theme_button_foreground_active_breeze; }
  modelbutton.flat:backdrop, popover.background checkbutton.flat:backdrop,
  popover.background radiobutton.flat:backdrop, modelbutton.flat:backdrop:hover,
  .menuitem.button.flat:backdrop,
  popover.background checkbutton.button:backdrop,
  popover.background radiobutton.button:backdrop,
  label:backdrop selection.flat,
  .menuitem.button.flat:backdrop:hover {
    color: @theme_unfocused_fg_color_breeze; }
  modelbutton.flat check:last-child, popover.background checkbutton.flat check:last-child,
  popover.background radiobutton.flat check:last-child,
  modelbutton.flat radio:last-child,
  popover.background checkbutton.flat radio:last-child,
  popover.background radiobutton.flat radio:last-child,
  .menuitem.button.flat check:last-child,
  popover.background checkbutton.button check:last-child,
  popover.background radiobutton.button check:last-child,
  .menuitem.button.flat radio:last-child,
  popover.background checkbutton.button radio:last-child,
  popover.background radiobutton.button radio:last-child {
    margin-right: 0px; }
  modelbutton.flat check:first-child, popover.background checkbutton.flat check:first-child,
  popover.background radiobutton.flat check:first-child,
  modelbutton.flat radio:first-child,
  popover.background checkbutton.flat radio:first-child,
  popover.background radiobutton.flat radio:first-child,
  .menuitem.button.flat check:first-child,
  popover.background checkbutton.button check:first-child,
  popover.background radiobutton.button check:first-child,
  .menuitem.button.flat radio:first-child,
  popover.background checkbutton.button radio:first-child,
  popover.background radiobutton.button radio:first-child {
    margin-left: 0px; }

modelbutton.flat arrow, popover.background checkbutton.flat arrow,
popover.background radiobutton.flat arrow {
  background: none; }
  modelbutton.flat arrow:hover, popover.background checkbutton.flat arrow:hover,
  popover.background radiobutton.flat arrow:hover {
    background: none; }
  modelbutton.flat arrow.left, popover.background checkbutton.flat arrow.left,
  popover.background radiobutton.flat arrow.left {
    -gtk-icon-source: -gtk-icontheme("go-previous-symbolic"); }
  modelbutton.flat arrow.right, popover.background checkbutton.flat arrow.right,
  popover.background radiobutton.flat arrow.right {
    -gtk-icon-source: -gtk-icontheme("go-next-symbolic"); }

popover,
menu {
  border: 1px solid @borders_breeze; }

popover.background {
  padding: 0px;
  border-radius: 1.25mm;
  background-color: @theme_bg_color_breeze;
  box-shadow: 0px 0px 2mm rgba(0, 0, 0, 0.25), 0px 0.25mm 1mm rgba(0, 0, 0, 0.15); }
  popover.background:backdrop, label:backdrop selection.background {
    box-shadow: none; }
  popover.background > list,
  popover.background > .view,
  popover.background > toolbar {
    border-style: none;
    background-color: transparent; }
  .csd popover.background.touch-selection, .csd popover.background.magnifier, popover.background.touch-selection, popover.background.magnifier {
    border: 1px solid @borders_breeze; }
  popover.background separator {
    margin: 0.75mm 0; }
  popover.background list separator {
    margin: 0px; }

GtkVolumeButton.button {
  padding: 1.25mm; }

/********
 * Misc *
 ********/
/****************
* Print dialog *
*****************/
printdialog paper {
  color: @theme_fg_color_breeze;
  border: 1px solid @borders_breeze;
  background: white;
  padding: 0; }
  printdialog paper:backdrop {
    color: @theme_unfocused_fg_color_breeze;
    border-color: @unfocused_borders_breeze;
    background: @print_paper_backdrop_breeze; }

printdialog .dialog-action-box {
  margin: 12px; }

/**********
* Frames *
**********/
frame > border,
.frame {
  box-shadow: none;
  margin: 0;
  padding: 0;
  border-radius: 0;
  border: 1px solid @borders_breeze; }
  frame > border.flat,
  .frame.flat,
  popover.background checkbutton.frame,
  popover.background radiobutton.frame {
    border-style: none; }
  frame > border:backdrop,
  .frame:backdrop,
  label:backdrop selection.frame {
    border-color: @unfocused_borders_breeze; }

actionbar > revealer > box {
  padding: 6px;
  border-top: 1px solid @borders_breeze; }
  actionbar > revealer > box:backdrop {
    border-color: @unfocused_borders_breeze; }

scrolledwindow viewport.frame {
  border-style: none; }

scrolledwindow junction {
  border-color: transparent;
  background-color: transparent;
  background-image: none; }

separator, separator.sidebar {
  background: @borders_breeze;
  min-width: 1px;
  min-height: 1px; }

/*************
* Expanders *
*************/
expander arrow {
  min-width: 16px;
  min-height: 16px;
  -gtk-icon-source: -gtk-icontheme("go-next-symbolic"); }
  expander arrow:dir(rtl) {
    -gtk-icon-source: -gtk-icontheme("go-next-rtl-symbolic"); }
  expander arrow:hover {
    color: shade(@theme_button_decoration_focus_breeze,1.3); }
  expander arrow:checked {
    -gtk-icon-source: -gtk-icontheme("go-down-symbolic"); }

/*********
* Paned *
*********/
paned > separator {
  min-width: 1px;
  min-height: 1px;
  -gtk-icon-source: none;
  border-style: none;
  background-color: transparent;
  background-image: image(@borders_breeze);
  background-size: 1px 1px; }
  paned > separator:backdrop {
    background-image: image(@unfocused_borders_breeze); }
  paned > separator.wide {
    min-width: 5px;
    min-height: 5px;
    background-color: @theme_bg_color_breeze;
    background-image: image(@borders_breeze), image(@borders_breeze);
    background-size: 1px 1px, 1px 1px; }
    paned > separator.wide:backdrop, label:backdrop paned > selection.wide {
      background-color: @theme_unfocused_bg_color_breeze;
      background-image: image(@unfocused_borders_breeze), image(@unfocused_borders_breeze); }

paned.horizontal > separator {
  background-repeat: repeat-y; }
  paned.horizontal > separator:dir(ltr) {
    margin: 0 -8px 0 0;
    padding: 0 8px 0 0;
    background-position: left; }
  paned.horizontal > separator:dir(rtl) {
    margin: 0 0 0 -8px;
    padding: 0 0 0 8px;
    background-position: right; }
  paned.horizontal > separator.wide {
    margin: 0;
    padding: 0;
    background-repeat: repeat-y, repeat-y;
    background-position: left, right; }

paned.vertical > separator {
  margin: 0 0 -8px 0;
  padding: 0 0 8px 0;
  background-repeat: repeat-x;
  background-position: top; }
  paned.vertical > separator.wide {
    margin: 0;
    padding: 0;
    background-repeat: repeat-x, repeat-x;
    background-position: bottom, top; }

/*********************
* Spinner Animation *
*********************/
@keyframes spin {
  to {
    -gtk-icon-transform: rotate(1turn); } }

spinner {
  background-image: none;
  opacity: 0;
  -gtk-icon-source: -gtk-icontheme("process-working-symbolic"); }
  spinner:checked {
    opacity: 1;
    animation: spin 1s linear infinite; }
    spinner:checked:disabled, label:disabled selection:checked {
      opacity: 0.5; }

/*****************
 * Notebooks and *
 * Tabs          *
 *****************/
/*************
  * Notebooks *
  *************/
notebook.frame {
  border: none;
  padding: 0px;
  box-shadow: inset 0px 0px 0px 1px @borders_breeze; }

notebook > header {
  padding: 0px;
  border: none;
  background-color: @theme_bg_color_breeze; }
  notebook > header.top {
    box-shadow: inset 0 -1px @borders_breeze; }
    notebook > header.top:backdrop, label:backdrop notebook > selection.top {
      box-shadow: inset 0 -1px @unfocused_borders_breeze; }
  notebook > header.bottom {
    box-shadow: inset 0 1px @borders_breeze; }
    notebook > header.bottom:backdrop, label:backdrop notebook > selection.bottom {
      box-shadow: inset 0 1px @unfocused_borders_breeze; }
  notebook > header.right {
    box-shadow: inset 1px 0 @borders_breeze; }
    notebook > header.right:backdrop, label:backdrop notebook > selection.right {
      box-shadow: inset 1px 0 @unfocused_borders_breeze; }
  notebook > header.left {
    box-shadow: inset -1px 0 @borders_breeze; }
    notebook > header.left:backdrop, label:backdrop notebook > selection.left {
      box-shadow: inset -1px 0 @unfocused_borders_breeze; }
  notebook > header:backdrop {
    background-color: @theme_unfocused_bg_color_breeze; }
  notebook > header tabs {
    margin: 0px; }
  notebook > header.top > tabs > tab {
    padding: 4px 6px;
    padding-bottom: 7px;
    border: 1px solid transparent;
    border-bottom: 1px solid @borders_breeze;
    border-top: 3px solid transparent;
    background-color: @theme_bg_color_breeze;
    border-radius: 0; }
    notebook > header.top > tabs > tab:first-child {
      border-radius: 3px 0px 0px 0px; }
    notebook > header.top > tabs > tab:last-child {
      border-radius: 0px 3px 0px 0px; }
    notebook > header.top > tabs > tab:hover, notebook > header.top > tabs > tab.prelight-page {
      transition: 0.15s;
      background-color: alpha(@theme_selected_bg_color_breeze,0.2); }
    notebook > header.top > tabs > tab > label {
      margin-left: -3px; }
    notebook > header.top > tabs > tab:checked {
      padding-left: 9px;
      border-bottom: none; }
      notebook > header.top > tabs > tab:checked:not(:first-child) {
        margin-left: -3px; }
      notebook > header.top > tabs > tab:checked:first-child {
        padding-left: 6px; }
      notebook > header.top > tabs > tab:checked:not(:last-child) {
        margin-right: -3px; }
      notebook > header.top > tabs > tab:checked + tab {
        padding-left: 9px; }
    notebook > header.top > tabs > tab:checked {
      transition: none;
      border-color: @borders_breeze;
      border-top-color: @theme_selected_bg_color_breeze;
      border-radius: 3px 3px 0px 0px;
      background-color: @theme_bg_color_breeze; }
  notebook > header.top > tabs arrow.down ~ tab:checked:nth-child(2) {
    margin-left: 0px;
    padding-left: 6px; }
  notebook > header.top > tabs arrow.down ~ tab:checked:nth-last-child(2) {
    margin-right: 0px; }
  notebook > header.bottom > tabs > tab {
    padding: 4px 6px;
    padding-bottom: 7px;
    border: 1px solid transparent;
    border-top: 1px solid @borders_breeze;
    border-bottom: 3px solid transparent;
    background-color: @theme_bg_color_breeze;
    border-radius: 0; }
    notebook > header.bottom > tabs > tab:first-child {
      border-radius: 0px 0px 0px 3px; }
    notebook > header.bottom > tabs > tab:last-child {
      border-radius: 0px 0px 3px 0px; }
    notebook > header.bottom > tabs > tab:hover, notebook > header.bottom > tabs > tab.prelight-page {
      transition: 0.15s;
      background-color: alpha(@theme_selected_bg_color_breeze,0.2); }
    notebook > header.bottom > tabs > tab > label {
      margin-left: -3px; }
    notebook > header.bottom > tabs > tab:checked {
      padding-left: 9px;
      border-top: none; }
      notebook > header.bottom > tabs > tab:checked:not(:first-child) {
        margin-left: -3px; }
      notebook > header.bottom > tabs > tab:checked:first-child {
        padding-left: 6px; }
      notebook > header.bottom > tabs > tab:checked:not(:last-child) {
        margin-right: -3px; }
      notebook > header.bottom > tabs > tab:checked + tab {
        padding-left: 9px; }
    notebook > header.bottom > tabs > tab:checked {
      transition: none;
      border-color: @borders_breeze;
      border-bottom-color: @theme_selected_bg_color_breeze;
      border-radius: 0px 0px 3px 3px;
      background-color: @theme_bg_color_breeze; }
  notebook > header.bottom > tabs arrow.down ~ tab:checked:nth-child(2) {
    margin-left: 0px;
    padding-left: 6px; }
  notebook > header.bottom > tabs arrow.down ~ tab:checked:nth-last-child(2) {
    margin-right: 0px; }
  notebook > header.left > tabs > tab {
    padding: 4px 6px;
    padding-bottom: 7px;
    border: 1px solid transparent;
    border-right: 1px solid @borders_breeze;
    border-left: 3px solid transparent;
    background-color: @theme_bg_color_breeze;
    border-radius: 0; }
    notebook > header.left > tabs > tab:first-child {
      border-radius: 3px 0px 0px 0px; }
    notebook > header.left > tabs > tab:last-child {
      border-radius: 0px 0px 0px 3px; }
    notebook > header.left > tabs > tab:hover, notebook > header.left > tabs > tab.prelight-page {
      transition: 0.15s;
      background-color: alpha(@theme_selected_bg_color_breeze,0.2); }
    notebook > header.left > tabs > tab > label {
      margin-top: -3px; }
    notebook > header.left > tabs > tab:checked {
      padding-top: 7px;
      border-right: none; }
      notebook > header.left > tabs > tab:checked:not(:first-child) {
        margin-top: -3px; }
      notebook > header.left > tabs > tab:checked:first-child {
        padding-top: 4px; }
      notebook > header.left > tabs > tab:checked:not(:last-child) {
        margin-bottom: -3px; }
      notebook > header.left > tabs > tab:checked + tab {
        padding-top: 7px; }
    notebook > header.left > tabs > tab:checked {
      transition: none;
      border-color: @borders_breeze;
      border-left-color: @theme_selected_bg_color_breeze;
      border-radius: 3px 0px 0px 3px;
      background-color: @theme_bg_color_breeze; }
  notebook > header.left > tabs arrow.down ~ tab:checked:nth-child(2) {
    margin-top: 0px;
    padding-top: 4px; }
  notebook > header.left > tabs arrow.down ~ tab:checked:nth-last-child(2) {
    margin-bottom: 0px; }
  notebook > header.right > tabs > tab {
    padding: 4px 6px;
    padding-bottom: 7px;
    border: 1px solid transparent;
    border-left: 1px solid @borders_breeze;
    border-right: 3px solid transparent;
    background-color: @theme_bg_color_breeze;
    border-radius: 0; }
    notebook > header.right > tabs > tab:first-child {
      border-radius: 0px 3px 0px 0px; }
    notebook > header.right > tabs > tab:last-child {
      border-radius: 0px 0px 3px 0px; }
    notebook > header.right > tabs > tab:hover, notebook > header.right > tabs > tab.prelight-page {
      transition: 0.15s;
      background-color: alpha(@theme_selected_bg_color_breeze,0.2); }
    notebook > header.right > tabs > tab > label {
      margin-top: -3px; }
    notebook > header.right > tabs > tab:checked {
      padding-top: 7px;
      border-left: none; }
      notebook > header.right > tabs > tab:checked:not(:first-child) {
        margin-top: -3px; }
      notebook > header.right > tabs > tab:checked:first-child {
        padding-top: 4px; }
      notebook > header.right > tabs > tab:checked:not(:last-child) {
        margin-bottom: -3px; }
      notebook > header.right > tabs > tab:checked + tab {
        padding-top: 7px; }
    notebook > header.right > tabs > tab:checked {
      transition: none;
      border-color: @borders_breeze;
      border-right-color: @theme_selected_bg_color_breeze;
      border-radius: 0px 3px 3px 0px;
      background-color: @theme_bg_color_breeze; }
  notebook > header.right > tabs arrow.down ~ tab:checked:nth-child(2) {
    margin-top: 0px;
    padding-top: 4px; }
  notebook > header.right > tabs arrow.down ~ tab:checked:nth-last-child(2) {
    margin-bottom: 0px; }
  notebook > header.top > tabs > tab.reorderable-page {
    border-width: 3px;
    border-style: solid;
    border-color: transparent;
    background-color: @theme_bg_color_breeze;
    background-clip: padding-box;
    border-right-width: 1px;
    border-right-color: @borders_breeze;
    box-shadow: inset -3px 0px 0px 0px @theme_bg_color_breeze; }
    notebook > header.top > tabs > tab.reorderable-page:hover, notebook > header.top > tabs > tab.reorderable-page.prelight-page {
      box-shadow: inset 0px -3px 0px 0px alpha(@theme_selected_bg_color_breeze,0.2), inset -3px 0px 0px 0px @theme_bg_color_breeze; }
    notebook > header.top > tabs > tab.reorderable-page:checked {
      box-shadow: inset 0px -3px 0px 0px @theme_selected_bg_color_breeze, inset -3px 0px 0px 0px @theme_bg_color_breeze; }
      notebook > header.top > tabs > tab.reorderable-page:checked:backdrop, label:backdrop notebook > header.top > tabs > selection:checked {
        background-color: @theme_unfocused_bg_color_breeze;
        border-color: transparent;
        border-right-color: @unfocused_borders_breeze;
        box-shadow: none; }
    notebook > header.top > tabs > tab.reorderable-page:backdrop, label:backdrop notebook > header.top > tabs > selection.reorderable-page {
      background-color: @theme_unfocused_bg_color_breeze;
      border-right-color: @unfocused_borders_breeze;
      box-shadow: none; }
  notebook > header.bottom > tabs > tab.reorderable-page {
    border-width: 3px;
    border-style: solid;
    border-color: transparent;
    background-color: @theme_bg_color_breeze;
    background-clip: padding-box;
    border-right-width: 1px;
    border-right-color: @borders_breeze;
    box-shadow: inset -3px 0px 0px 0px @theme_bg_color_breeze; }
    notebook > header.bottom > tabs > tab.reorderable-page:hover, notebook > header.bottom > tabs > tab.reorderable-page.prelight-page {
      box-shadow: inset 0px -3px 0px 0px alpha(@theme_selected_bg_color_breeze,0.2), inset -3px 0px 0px 0px @theme_bg_color_breeze; }
    notebook > header.bottom > tabs > tab.reorderable-page:checked {
      box-shadow: inset 0px -3px 0px 0px @theme_selected_bg_color_breeze, inset -3px 0px 0px 0px @theme_bg_color_breeze; }
      notebook > header.bottom > tabs > tab.reorderable-page:checked:backdrop, label:backdrop notebook > header.bottom > tabs > selection:checked {
        background-color: @theme_unfocused_bg_color_breeze;
        border-color: transparent;
        border-right-color: @unfocused_borders_breeze;
        box-shadow: none; }
    notebook > header.bottom > tabs > tab.reorderable-page:backdrop, label:backdrop notebook > header.bottom > tabs > selection.reorderable-page {
      background-color: @theme_unfocused_bg_color_breeze;
      border-right-color: @unfocused_borders_breeze;
      box-shadow: none; }
  notebook > header.left > tabs > tab.reorderable-page {
    border-width: 3px;
    border-style: solid;
    border-color: transparent;
    background-color: @theme_bg_color_breeze;
    background-clip: padding-box;
    border-bottom-width: 1px;
    border-bottom-color: @borders_breeze;
    box-shadow: inset 0px -3px 0px 0px @theme_bg_color_breeze; }
    notebook > header.left > tabs > tab.reorderable-page:hover, notebook > header.left > tabs > tab.reorderable-page.prelight-page {
      box-shadow: inset 0px -3px 0px 0px alpha(@theme_selected_bg_color_breeze,0.2), inset 0px -3px 0px 0px @theme_bg_color_breeze; }
    notebook > header.left > tabs > tab.reorderable-page:checked {
      box-shadow: inset 0px -3px 0px 0px @theme_selected_bg_color_breeze, inset 0px -3px 0px 0px @theme_bg_color_breeze; }
      notebook > header.left > tabs > tab.reorderable-page:checked:backdrop, label:backdrop notebook > header.left > tabs > selection:checked {
        background-color: @theme_unfocused_bg_color_breeze;
        border-color: transparent;
        border-bottom-color: @unfocused_borders_breeze;
        box-shadow: none; }
    notebook > header.left > tabs > tab.reorderable-page:backdrop, label:backdrop notebook > header.left > tabs > selection.reorderable-page {
      background-color: @theme_unfocused_bg_color_breeze;
      border-bottom-color: @unfocused_borders_breeze;
      box-shadow: none; }
  notebook > header.right > tabs > tab.reorderable-page {
    border-width: 3px;
    border-style: solid;
    border-color: transparent;
    background-color: @theme_bg_color_breeze;
    background-clip: padding-box;
    border-bottom-width: 1px;
    border-bottom-color: @borders_breeze;
    box-shadow: inset 0px -3px 0px 0px @theme_bg_color_breeze; }
    notebook > header.right > tabs > tab.reorderable-page:hover, notebook > header.right > tabs > tab.reorderable-page.prelight-page {
      box-shadow: inset 0px -3px 0px 0px alpha(@theme_selected_bg_color_breeze,0.2), inset 0px -3px 0px 0px @theme_bg_color_breeze; }
    notebook > header.right > tabs > tab.reorderable-page:checked {
      box-shadow: inset 0px -3px 0px 0px @theme_selected_bg_color_breeze, inset 0px -3px 0px 0px @theme_bg_color_breeze; }
      notebook > header.right > tabs > tab.reorderable-page:checked:backdrop, label:backdrop notebook > header.right > tabs > selection:checked {
        background-color: @theme_unfocused_bg_color_breeze;
        border-color: transparent;
        border-bottom-color: @unfocused_borders_breeze;
        box-shadow: none; }
    notebook > header.right > tabs > tab.reorderable-page:backdrop, label:backdrop notebook > header.right > tabs > selection.reorderable-page {
      background-color: @theme_unfocused_bg_color_breeze;
      border-bottom-color: @unfocused_borders_breeze;
      box-shadow: none; }
  notebook > header.top > tabs > arrow {
    border-top-style: none; }
  notebook > header.bottom > tabs > arrow {
    border-bottom-style: none; }
  notebook > header.top > tabs > arrow, notebook > header.bottom > tabs > arrow {
    margin-left: -5px;
    margin-right: -5px;
    padding-left: 4px;
    padding-right: 4px; }
    notebook > header.top > tabs > arrow.down, notebook > header.bottom > tabs > arrow.down {
      -gtk-icon-source: -gtk-icontheme("go-previous-symbolic"); }
    notebook > header.top > tabs > arrow.up, notebook > header.bottom > tabs > arrow.up {
      -gtk-icon-source: -gtk-icontheme("go-next-symbolic"); }
  notebook > header.left > tabs > arrow {
    border-left-style: none; }
  notebook > header.right > tabs > arrow {
    border-right-style: none; }
  notebook > header.left > tabs > arrow, notebook > header.right > tabs > arrow {
    margin-top: -5px;
    margin-bottom: -5px;
    padding-top: 4px;
    padding-bottom: 4px; }
    notebook > header.left > tabs > arrow.down, notebook > header.right > tabs > arrow.down {
      -gtk-icon-source: -gtk-icontheme("go-up-symbolic"); }
    notebook > header.left > tabs > arrow.up, notebook > header.right > tabs > arrow.up {
      -gtk-icon-source: -gtk-icontheme("go-down-symbolic"); }
  notebook > header > tabs > arrow {
    border-color: transparent;
    background: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    text-shadow: none;
    -gtk-icon-shadow: none;
    min-height: 16px;
    min-width: 16px;
    border-radius: 0; }
    notebook > header > tabs > arrow.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    notebook > header > tabs > arrow.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    notebook > header > tabs > arrow:checked {
      border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
      background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
    notebook > header > tabs > arrow:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      notebook > header > tabs > arrow:hover:not(:checked):not(:active) {
        background: unset; }
    notebook > header > tabs > arrow:active {
      border-color: @theme_button_decoration_hover_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
    notebook > header > tabs > arrow:focus {
      border-color: @theme_button_decoration_focus_breeze; }
    notebook > header > tabs > arrow:hover:not(:active):not(:backdrop) {
      background-clip: padding-box;
      background-image: none;
      background-color: rgba(255, 255, 255, 0.3);
      border-color: transparent;
      box-shadow: none; }
  notebook > header button.flat {
    padding: 0;
    margin: 2px;
    min-width: 12px;
    min-height: 12px;
    border: 0px solid;
    border-radius: 50%;
    color: @borders_breeze;
    background-image: none; }
    notebook > header button.flat:active, notebook > header button.flat:hover {
      color: ${red}; }

notebook > stack:not(:only-child) {
  background-color: transparent;
  border-style: solid;
  border-color: @borders_breeze;
  border-width: 0px; }

scrolledwindow overshoot,
scrolledwindow undershoot {
  background: none; }

/************
 * Pathbars *
 ************/
.path-bar {
  background-color: @theme_bg_color_breeze;
  border-bottom: 1px solid @borders_breeze; }

.path-bar button {
  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.125);
  text-shadow: none;
  -gtk-icon-shadow: none;
  color: @theme_button_foreground_normal_breeze;
  border-color: @borders_breeze;
  background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%);
  padding: 4px 8px;
  color: @theme_fg_color_breeze; }
  .path-bar button.suggested-action {
    background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
    border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  .path-bar button.destructive-action {
    background-color: alpha(@error_color_breeze,0.2);
    border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
  .path-bar button:backdrop {
    box-shadow: none;
    background: @theme_button_background_normal_breeze; }
  .path-bar button:checked {
    background: alpha(@theme_button_foreground_normal_breeze,0.125);
    box-shadow: none; }
  .path-bar button:hover {
    border-color: @theme_button_decoration_hover_breeze; }
    .path-bar button:hover:not(:checked):not(:active) {
      background: @theme_button_background_normal_breeze; }
  .path-bar button:active {
    box-shadow: none;
    background: alpha(@theme_button_decoration_hover_breeze,0.333); }
  .path-bar button:focus {
    border-color: @theme_button_decoration_focus_breeze; }
  .path-bar button:disabled {
    box-shadow: none;
    color: @theme_button_foreground_insensitive_breeze;
    border-color: @insensitive_borders_breeze;
    background: @theme_button_background_insensitive_breeze; }
    .path-bar button:disabled:active, .path-bar button:disabled:checked {
      color: @theme_button_foreground_active_insensitive_breeze; }
  .path-bar button:hover {
    border-color: @theme_button_decoration_hover_breeze; }
  .path-bar button:active, .path-bar button:checked {
    background-color: @borders_breeze;
    font-weight: normal; }
  .path-bar button.text-button, .path-bar button.image-button, .path-bar button {
    padding-left: 4px;
    padding-right: 4px; }
  .path-bar button.text-button.image-button label {
    padding-left: 0;
    padding-right: 0; }
  .path-bar button.text-button.image-button label:last-child, .path-bar button label:last-child {
    padding-right: 8px; }
  .path-bar button.text-button.image-button label:first-child, .path-bar button label:first-child {
    padding-left: 8px; }
  .path-bar button image {
    padding-left: 4px;
    padding-right: 4px; }
  .path-bar button.slider-button {
    padding-left: 0;
    padding-right: 0; }

/*****************
 * Progress bars *
 *****************/
progressbar {
  font-size: smaller;
  color: alpha(@theme_button_foreground_normal_breeze,0.3); }
  progressbar.horizontal trough,
  progressbar.horizontal progress {
    min-height: 4px; }
  progressbar.vertical trough,
  progressbar.vertical progress {
    min-width: 4px; }
  progressbar trough {
    border: 1px solid;
    border-radius: 1.25mm;
    background: linear-gradient(alpha(@theme_button_foreground_normal_breeze,0.1),alpha(@theme_button_foreground_normal_breeze,0.1)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    border-color: alpha(@theme_button_foreground_normal_breeze,0.2); }
  progressbar progress {
    border: 1px solid;
    margin: -1px;
    border-radius: 1.25mm;
    box-shadow: none;
    background: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    border: 1px solid @theme_button_decoration_hover_breeze; }
  progressbar:backdrop progress {
    background: linear-gradient(alpha(@theme_unfocused_selected_bg_color_breeze,0.5),alpha(@theme_unfocused_selected_bg_color_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    border-color: @theme_unfocused_selected_bg_color_breeze; }
  progressbar.osd {
    background-color: transparent; }

treeview.view.progressbar {
  border: 0px solid transparent;
  border-radius: 1.25mm;
  background-color: @theme_selected_bg_color_breeze;
  color: @theme_selected_fg_color_breeze;
  background-image: none; }
  treeview.view.progressbar:selected:focus, treeview.view.progressbar:selected,
  headerbar.selection-mode .progressbar.subtitle:link,
  headerbar.selection-mode button.progressbar.subtitle:visited {
    background-color: alpha(@theme_selected_bg_color_breeze,0.25); }

treeview.view.trough {
  background-color: mix(@theme_fg_color_breeze,@theme_bg_color_breeze,0.2); }
  treeview.view.trough:selected:focus, treeview.view.trough:selected,
  headerbar.selection-mode .trough.subtitle:link,
  headerbar.selection-mode button.trough.subtitle:visited {
    background-color: alpha(@theme_selected_fg_color_breeze,0.3); }

/*************
 * Level Bar *
 *************/
levelbar block {
  min-height: 6px; }

levelbar.vertical block {
  min-width: 6px;
  min-height: 32px; }

levelbar trough {
  border: 1px solid;
  padding: 2px;
  border-radius: 3px;
  color: @theme_text_color_breeze;
  border-color: @borders_breeze;
  background-color: @theme_base_color_breeze;
  box-shadow: none; }
  levelbar trough:backdrop {
    color: @theme_unfocused_text_color_breeze;
    border-color: @unfocused_borders_breeze;
    background-color: @theme_unfocused_base_color_breeze; }

levelbar.horizontal.discrete block {
  margin: 0 1px;
  min-width: 32px; }

levelbar.vertical.discrete block {
  margin: 1px 0; }

levelbar block:not(.empty) {
  border: 1px solid @theme_button_decoration_hover_breeze;
  background: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
  box-shadow: none;
  border-radius: 1.25mm; }
  levelbar block:not(.empty):backdrop, levelbar label:backdrop selection:not(.empty), label:backdrop levelbar selection:not(.empty) {
    border: 1px solid @theme_unfocused_selected_bg_color_breeze;
    background: linear-gradient(alpha(@theme_unfocused_selected_bg_color_breeze,0.5),alpha(@theme_unfocused_selected_bg_color_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: none;
    border-radius: 1.25mm; }

levelbar block.low {
  border: 1px solid @warning_color_breeze;
  background: linear-gradient(alpha(@warning_color_breeze,0.5),alpha(@warning_color_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
  box-shadow: none;
  border-radius: 1.25mm; }
  levelbar block.low:backdrop, levelbar label:backdrop selection.low, label:backdrop levelbar selection.low {
    border: 1px solid @warning_color_backdrop_breeze;
    background: linear-gradient(alpha(@warning_color_backdrop_breeze,0.5),alpha(@warning_color_backdrop_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: none;
    border-radius: 1.25mm; }

levelbar block.full, levelbar block.high {
  border: 1px solid @success_color_breeze;
  background: linear-gradient(alpha(@success_color_breeze,0.5),alpha(@success_color_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
  box-shadow: none;
  border-radius: 1.25mm; }
  levelbar block.full:backdrop, levelbar label:backdrop selection.full, label:backdrop levelbar selection.full, levelbar block.high:backdrop, levelbar label:backdrop selection.high, label:backdrop levelbar selection.high {
    border: 1px solid @success_color_backdrop_breeze;
    background: linear-gradient(alpha(@success_color_backdrop_breeze,0.5),alpha(@success_color_backdrop_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: none;
    border-radius: 1.25mm; }

levelbar block.empty {
  border: 1px solid alpha(@theme_button_foreground_normal_breeze,0.2);
  background: linear-gradient(alpha(alpha(@theme_button_foreground_normal_breeze,0.2),0.5),alpha(alpha(@theme_button_foreground_normal_breeze,0.2),0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
  box-shadow: none;
  border-radius: 1.25mm; }

/************
 * GtkScale *
 ************/
scale {
  padding: 12px; }
  scale.fine-tune.trough {
    margin: 8px;
    border-radius: 1.25mm; }
  scale slider {
    min-width: 16px;
    min-height: 16px;
    border: 1px solid mix(@theme_bg_color_breeze,@theme_button_foreground_normal_breeze,0.4);
    border-radius: 50%;
    box-shadow: 0.5px 0.5px 1px rgba(0, 0, 0, 0.125);
    background: @theme_button_background_normal_breeze;
    margin: -9px; }
    scale slider:hover {
      border-color: @theme_button_decoration_hover_breeze;
      border-radius: 50%; }
      scale slider:hover:backdrop, scale label:backdrop selection:hover, label:backdrop scale selection:hover {
        border-color: @theme_button_decoration_hover_insensitive_breeze; }
    scale slider:focus {
      border-color: @theme_button_decoration_focus_breeze;
      border-radius: 50%; }
      scale slider:focus:backdrop, scale label:backdrop selection:focus, label:backdrop scale selection:focus {
        border-color: @theme_button_decoration_focus_insensitive_breeze; }
    scale slider:disabled {
      border-style: solid;
      border-radius: 50%;
      background-color: @theme_button_background_insensitive_breeze;
      opacity: 1;
      border-color: @insensitive_borders_breeze; }
      scale slider:disabled:backdrop {
        background-color: alpha(@theme_button_background_backdrop_insensitive_breeze,100);
        border-color: @unfocused_insensitive_borders_breeze; }
    scale slider:active {
      box-shadow: none;
      background-color: @theme_button_background_normal_breeze; }
      scale slider:active:backdrop, scale label:backdrop selection:active, label:backdrop scale selection:active {
        background-color: @theme_button_background_normal_breeze;
        border-color: @theme_button_decoration_focus_backdrop_breeze; }
    scale slider:backdrop {
      background-color: @theme_button_background_backdrop_breeze;
      border-color: @unfocused_borders_breeze; }
  scale trough {
    min-width: 4px;
    min-height: 4px;
    border: 1px solid;
    border-radius: 1.25mm;
    background: linear-gradient(alpha(@theme_button_foreground_normal_breeze,0.1),alpha(@theme_button_foreground_normal_breeze,0.1)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    border-color: alpha(@theme_button_foreground_normal_breeze,0.2); }
    scale trough:disabled, scale trough.vertical:disabled, scale label:disabled selection.vertical, label:disabled scale selection.vertical {
      background: linear-gradient(alpha(alpha(@theme_button_foreground_normal_breeze,0.1),0.5),alpha(alpha(@theme_button_foreground_normal_breeze,0.1),0.5)), linear-gradient(alpha(@theme_bg_color_breeze,0.5),alpha(@theme_bg_color_breeze,0.5));
      border-color: alpha(@theme_button_foreground_normal_breeze,0.1); }
  scale highlight {
    margin: -1px;
    border-radius: 1.25mm;
    background: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    border: 1px solid @theme_button_decoration_hover_breeze; }
    scale highlight:disabled {
      background: none;
      border-color: transparent; }
    scale highlight:backdrop {
      background: linear-gradient(alpha(@theme_unfocused_selected_bg_color_breeze,0.5),alpha(@theme_unfocused_selected_bg_color_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
      border-color: @theme_unfocused_selected_bg_color_breeze; }
      scale highlight:backdrop:disabled {
        background: none;
        border-color: transparent; }
  scale marks {
    color: alpha(@theme_button_foreground_normal_breeze,0.2);
    font-feature-settings: "tnum"; }
  scale label {
    color: @theme_button_foreground_normal_breeze; }
  scale.horizontal marks.top {
    margin-bottom: 1px;
    margin-top: -9px; }
  scale.horizontal.fine-tune marks.top {
    margin-bottom: 1px;
    margin-top: -6px; }
  scale.horizontal marks.bottom {
    margin-top: 1px;
    margin-bottom: -9px; }
  scale.horizontal.fine-tune marks.bottom {
    margin-top: 1px;
    margin-bottom: -6px; }
  scale.vertical marks.top {
    margin-right: 1px;
    margin-left: -9px; }
  scale.vertical.fine-tune marks.top {
    margin-right: 1px;
    margin-left: -6px; }
  scale.vertical marks.bottom {
    margin-left: 1px;
    margin-right: -9px; }
  scale.vertical.fine-tune marks.bottom {
    margin-left: 1px;
    margin-right: -6px; }
  scale.horizontal indicator {
    min-height: 8px;
    min-width: 1px; }
  scale.horizontal.fine-tune indicator {
    min-height: 5px; }
  scale.vertical indicator {
    min-height: 1px;
    min-width: 8px; }
  scale.vertical.fine-tune indicator {
    min-width: 5px; }

/**************
 * Scrollbars *
 **************/
scrollbar {
  -GtkScrollbar-has-backward-stepper: false;
  -GtkScrollbar-has-forward-stepper: false;
  background-color: @theme_bg_color_breeze;
  border-width: 0px;
  border-color: @theme_bg_color_breeze;
  padding: 5px 0px; }
  scrollbar.vertical:dir(rtl) {
    border-right: 1px solid @borders_breeze; }
  scrollbar.vertical:dir(ltr) {
    border-left: 1px solid @borders_breeze; }
  scrollbar.vertical.right {
    border-left: 1px solid @borders_breeze; }
    scrollbar.vertical.right:dir(rtl) {
      border-right: none; }
  scrollbar.vertical.left {
    border-right: 1px solid @borders_breeze; }
    scrollbar.vertical.left:dir(ltr) {
      border-left: none; }
  scrollbar.horizontal {
    border-top: 1px solid @borders_breeze;
    padding: 0px 5px; }
    scrollbar.horizontal.bottom {
      border-top: 1px solid @borders_breeze; }
    scrollbar.horizontal.top {
      border-top: none;
      border-bottom: 1px solid @borders_breeze; }
  scrollbar button {
    min-width: 14px;
    min-height: 14px;
    margin: 0px;
    padding: 0px 0px;
    border: none;
    border-radius: 0px;
    background-image: none;
    background-color: transparent;
    color: transparent;
    box-shadow: none; }
    scrollbar button:hover {
      border: none;
      background-image: none;
      background-color: @theme_bg_color_breeze;
      color: transparent; }
    scrollbar button:active, scrollbar button:active:hover {
      border: none;
      background-image: none;
      background-color: @theme_bg_color_breeze;
      color: transparent; }
    scrollbar button:disabled {
      border: none;
      background-color: @theme_bg_color_breeze;
      background-image: none;
      color: transparent; }
  scrollbar.dragging, scrollbar.hovering {
    opacity: 0.991; }
  scrollbar.overlay-indicator:not(.dragging):not(.hovering) {
    opacity: 0.999; }
  scrollbar.overlay-indicator:not(.dragging):not(.hovering) {
    -GtkScrollbar-has-backward-stepper: false;
    -GtkScrollbar-has-forward-stepper: false; }
  scrollbar.overlay-indicator {
    border: none;
    background: none; }
    scrollbar.overlay-indicator.vertical {
      border: none; }
    scrollbar.overlay-indicator.horizontal {
      border: none; }
    scrollbar.overlay-indicator slider {
      background-image: linear-gradient(alpha(alpha(@theme_button_foreground_normal_breeze,0.175),0.75),alpha(alpha(@theme_button_foreground_normal_breeze,0.175),0.75)), linear-gradient(alpha(@theme_bg_color_breeze,0.75),alpha(@theme_bg_color_breeze,0.75)); }
  scrollbar trough {
    margin: 0px 5px;
    min-width: 6px;
    min-height: 14px;
    background-color: transparent; }
  scrollbar:hover trough slider {
    background-image: linear-gradient(alpha(@theme_button_foreground_normal_breeze,0.25),alpha(@theme_button_foreground_normal_breeze,0.25)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: 0 0 0 1px alpha(@theme_button_foreground_normal_breeze,0.45) inset; }
    scrollbar:hover trough slider:hover {
      background-image: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
      box-shadow: 0 0 0 1px alpha(@theme_button_decoration_hover_breeze,0.9) inset; }
  scrollbar.horizontal trough {
    margin: 5px 0px;
    min-width: 14px;
    min-height: 6px; }
  *:focus ~ scrollbar:hover slider, button:focus:link ~ scrollbar:hover slider,
  button:focus:visited ~ scrollbar:hover slider, scrollbar ~ *:focus:hover slider, scrollbar ~ button:focus:hover:link slider,
  scrollbar ~ button:focus:hover:visited slider {
    background-image: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: 0 0 0 1px alpha(@theme_button_decoration_hover_breeze,0.9) inset; }
  *:focus ~ scrollbar.overlay-indicator slider, button:focus:link ~ scrollbar.overlay-indicator slider,
  button:focus:visited ~ scrollbar.overlay-indicator slider, scrollbar ~ *:focus.overlay-indicator slider, scrollbar ~ button:focus.overlay-indicator:link slider,
  scrollbar ~ button:focus.overlay-indicator:visited slider {
    background-image: linear-gradient(alpha(alpha(@theme_button_decoration_focus_breeze,0.35),0.75),alpha(alpha(@theme_button_decoration_focus_breeze,0.35),0.75)), linear-gradient(alpha(@theme_bg_color_breeze,0.75),alpha(@theme_bg_color_breeze,0.75)); }
  *:focus ~ scrollbar.overlay-indicator:hover slider, button:focus:link ~ scrollbar.overlay-indicator:hover slider,
  button:focus:visited ~ scrollbar.overlay-indicator:hover slider, scrollbar ~ *:focus.overlay-indicator:hover slider, scrollbar ~ button:focus.overlay-indicator:hover:link slider,
  scrollbar ~ button:focus.overlay-indicator:hover:visited slider {
    background-image: linear-gradient(alpha(@theme_button_decoration_hover_breeze,0.5),alpha(@theme_button_decoration_hover_breeze,0.5)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: 0 0 0 1px alpha(@theme_button_decoration_hover_breeze,0.9) inset; }
  scrollbar slider {
    transition-duration: 0.1s;
    min-width: 6px;
    min-height: 30px;
    border-radius: 15px;
    background-clip: padding-box;
    background-image: linear-gradient(alpha(@theme_button_foreground_normal_breeze,0.175),alpha(@theme_button_foreground_normal_breeze,0.175)), linear-gradient(@theme_bg_color_breeze,@theme_bg_color_breeze);
    box-shadow: 0 0 0 1px alpha(@theme_button_foreground_normal_breeze,0.315) inset; }
  :not(webkitwebview) scrollbar slider {
    margin: -9px;
    margin-bottom: -6px;
    margin-top: -6px;
    border: 5px solid transparent; }
  scrollbar.horizontal slider {
    transition-duration: 0.1s;
    min-width: 30px;
    min-height: 6px; }
  :not(webkitwebview) scrollbar.horizontal slider {
    margin: -9px;
    margin-left: -6px;
    margin-right: -6px; }

/***********
 * Sidebar *
 ***********/
.sidebar {
  border-radius: 0px;
  border-style: none;
  background-color: @theme_base_color_breeze; }
  .sidebar:not(separator):dir(ltr), .sidebar:not(separator).left, .sidebar:not(separator).left:dir(rtl) {
    border-right: 1px solid mix(${base0},${base04},0.1);
    border-left: none; }
  .sidebar:not(separator):dir(rtl), .sidebar:not(separator).right {
    border-left: 1px solid mix(${base0},${base04},0.1);
    border-right: none; }
  .sidebar .sidebar-header > separator {
    background-color: mix(${base0},${base04},0.1); }
  .sidebar row.activatable {
    border: 0; }
    .sidebar row.activatable:dir(ltr) {
      border-right: 3px solid transparent; }
    .sidebar row.activatable:dir(rtl) {
      border-left: 3px solid transparent; }
    .sidebar row.activatable:selected:backdrop {
      background-color: @theme_unfocused_selected_bg_color_alt_breeze; }
  paned .sidebar.left, paned .sidebar.right, paned .sidebar.left:dir(rtl), paned .sidebar:dir(rtl), paned .sidebar:dir(ltr), paned .sidebar {
    border-style: none; }

separator.sidebar {
  background-color: @borders_breeze; }

placessidebar > viewport.frame {
  border-style: none; }

placessidebar row {
  min-height: 36px;
  padding: 0px; }
  placessidebar row > revealer {
    padding: 0 14px; }
  placessidebar row:selected {
    color: @theme_selected_fg_color_breeze; }
  placessidebar row:disabled {
    color: @insensitive_fg_color_breeze; }
  placessidebar row:backdrop {
    color: @theme_unfocused_fg_color_breeze; }
    placessidebar row:backdrop:selected {
      color: @theme_unfocused_selected_bg_color_alt_breeze; }
    placessidebar row:backdrop:disabled {
      color: @insensitive_unfocused_fg_color_breeze; }
  placessidebar row image.sidebar-icon:dir(ltr) {
    padding-right: 8px; }
  placessidebar row image.sidebar-icon:dir(rtl) {
    padding-left: 8px; }
  placessidebar row label.sidebar-label:dir(ltr) {
    padding-right: 2px; }
  placessidebar row label.sidebar-label:dir(rtl) {
    padding-left: 2px; }
  button.sidebar-button {
    border-color: transparent;
    background: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: none;
    color: @theme_button_foreground_normal_breeze;
    text-shadow: none;
    -gtk-icon-shadow: none;
    min-height: 26px;
    min-width: 26px;
    margin-top: 3px;
    margin-bottom: 3px;
    padding: 0; }
    button.sidebar-button.suggested-action {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.2);
      border-color: mix(@theme_button_decoration_focus_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    button.sidebar-button.destructive-action {
      background-color: alpha(@error_color_breeze,0.2);
      border-color: mix(@error_color_breeze,mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.333),0.5); }
    button.sidebar-button:checked {
      border-color: mix(@theme_button_background_normal_breeze,@theme_button_foreground_normal_breeze,0.3);
      background-color: alpha(@theme_button_foreground_normal_breeze,0.125); }
    button.sidebar-button:hover {
      border-color: @theme_button_decoration_hover_breeze; }
      button.sidebar-button:hover:not(:checked):not(:active) {
        background: unset; }
    button.sidebar-button:active {
      border-color: @theme_button_decoration_hover_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.333); }
    button.sidebar-button:focus {
      border-color: @theme_button_decoration_focus_breeze; }
  placessidebar row:selected:active {
    box-shadow: none; }
  placessidebar row.sidebar-placeholder-row {
    padding: 0 8px;
    min-height: 2px;
    background-image: none;
    background-clip: content-box; }
  placessidebar row.sidebar-new-bookmark-row {
    color: @theme_selected_bg_color_breeze; }

placesview .server-list-button > image {
  -gtk-icon-transform: rotate(0turn); }

placesview .server-list-button:checked > image {
  -gtk-icon-transform: rotate(-0.5turn); }

placesview row.activatable:hover {
  background-color: transparent; }

placesview > actionbar > revealer > box > label {
  padding-left: 8px;
  padding-right: 8px; }

stacksidebar.sidebar row {
  padding: 10px 4px; }
  stacksidebar.sidebar row > label {
    padding-left: 6px;
    padding-right: 6px; }
  stacksidebar.sidebar row.needs-attention > .label {
    background-size: 6px 6px, 0 0; }

/*****************
 * GtkSpinButton *
 *****************/
spinbutton:not(.vertical) {
  padding: 0; }
  spinbutton:not(.vertical) entry {
    min-width: 28px;
    margin: 0;
    background: none;
    background-color: transparent;
    border: none;
    border-radius: 0;
    box-shadow: none; }
    spinbutton:not(.vertical) entry:backdrop:disabled {
      background-color: transparent; }
  spinbutton:not(.vertical) button {
    min-height: 16px;
    margin: 0;
    padding-bottom: 0;
    padding-top: 0;
    color: @theme_text_color_breeze;
    background-image: none;
    background-color: transparent;
    border-style: none;
    box-shadow: none; }
    spinbutton:not(.vertical) button:hover {
      color: @theme_view_hover_decoration_color_breeze; }
      spinbutton:not(.vertical) button:hover:not(:checked):not(:active) {
        background: none; }
    spinbutton:not(.vertical) button:disabled {
      color: @insensitive_base_fg_color_breeze; }
    spinbutton:not(.vertical) button:active {
      color: @theme_view_active_decoration_color_breeze;
      box-shadow: none; }
    spinbutton:not(.vertical) button:backdrop {
      color: @theme_unfocused_text_color_breeze;
      background-color: transparent; }
    spinbutton:not(.vertical) button:backdrop:disabled {
      color: @theme_unfocused_view_text_color_breeze;
      background-color: transparent;
      border-style: none; }
    spinbutton:not(.vertical) button:dir(ltr):last-child {
      border-radius: 0 3px 3px 0; }
    spinbutton:not(.vertical) button:dir(rtl):first-child {
      border-radius: 3px 0 0 3px; }

spinbutton.vertical:disabled, label:disabled selection.vertical {
  color: @insensitive_base_fg_color_breeze; }

spinbutton.vertical:backdrop:disabled, label:backdrop selection.vertical:disabled, label:disabled selection.vertical:backdrop, label:backdrop label:disabled selection.vertical, label:disabled label:backdrop selection.vertical {
  color: @theme_unfocused_view_text_color_breeze; }

spinbutton.vertical:drop(active) {
  border-color: transparent;
  box-shadow: none; }

spinbutton.vertical entry {
  margin: 0px;
  min-height: 26px;
  min-width: 26px;
  border-style: none solid none solid;
  border-color: @borders_breeze;
  padding: 0;
  border-radius: 0; }
  spinbutton.vertical entry:disabled {
    color: @insensitive_base_fg_color_breeze;
    background-color: @insensitive_base_color_breeze;
    border-color: @insensitive_borders_breeze; }
  spinbutton.vertical entry:backdrop:disabled {
    color: @theme_unfocused_view_text_color_breeze;
    background-color: @theme_unfocused_view_bg_color_breeze;
    border-color: @unfocused_insensitive_borders_breeze; }

spinbutton.vertical button {
  min-height: 26px;
  min-width: 26px;
  padding: 0;
  box-shadow: none;
  background-image: none;
  background-color: @theme_base_color_breeze;
  color: @theme_text_color_breeze;
  border-color: @borders_breeze; }
  spinbutton.vertical button:hover {
    color: @theme_view_hover_decoration_color_breeze; }
    spinbutton.vertical button:hover:not(:checked):not(:active) {
      background-color: @theme_base_color_breeze; }
  spinbutton.vertical button:active {
    color: @theme_view_active_decoration_color_breeze; }
  spinbutton.vertical button:disabled {
    color: @insensitive_base_fg_color_breeze;
    background-color: @insensitive_base_color_breeze;
    border-color: @insensitive_borders_breeze; }
  spinbutton.vertical button:backdrop:disabled {
    color: @theme_unfocused_view_text_color_breeze;
    background-color: @theme_unfocused_view_bg_color_breeze;
    border-color: @unfocused_insensitive_borders_breeze; }

spinbutton.vertical button.up {
  border-radius: 3px 3px 0 0;
  border-style: solid solid none solid; }

spinbutton.vertical button.down {
  border-radius: 0 0 3px 3px;
  border-style: none solid solid solid; }

treeview spinbutton:not(.vertical) {
  min-height: 0;
  border-style: none;
  border-radius: 0; }
  treeview spinbutton:not(.vertical) entry {
    min-height: 0;
    padding: 1px 2px; }

/**********
 * Switch *
 **********/
switch {
  margin: 2px;
  font-weight: bold;
  font-size: smaller;
  border: 1px solid;
  border-radius: 12px;
  color: transparent;
  background-color: alpha(@theme_button_foreground_normal_breeze,0.05);
  border-color: alpha(@theme_button_foreground_normal_breeze,0.222);
  text-shadow: none; }
  switch:disabled {
    background-color: alpha(@theme_button_foreground_normal_breeze,0.03); }
  switch:checked {
    background: alpha(@theme_button_decoration_hover_breeze,0.333);
    border-color: @theme_button_decoration_hover_breeze; }
    switch:checked:disabled, label:disabled selection:checked {
      background: alpha(@theme_button_decoration_hover_breeze,0.222);
      border-color: alpha(@theme_button_decoration_hover_breeze,0.777); }
  switch:dir(ltr):checked slider {
    margin-left: 1px; }
  switch:dir(ltr):not(:checked) slider {
    margin-right: 1px; }
  switch slider {
    min-width: 24px;
    min-height: 24px;
    margin: -4px;
    border: 1px solid;
    border-radius: 12px;
    box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.125);
    border-color: @borders_breeze;
    background: linear-gradient(180deg, mix(@theme_button_background_normal_breeze,white,0.03125) 0%, @theme_button_background_normal_breeze 50%, mix(@theme_button_background_normal_breeze,black,0.03125) 100%); }
  switch:hover slider {
    border-color: @theme_button_decoration_hover_breeze; }
  switch:focus slider {
    border-color: @theme_button_decoration_focus_breeze; }
  switch:disabled slider {
    box-shadow: none;
    color: @theme_button_foreground_insensitive_breeze;
    border-color: @insensitive_borders_breeze;
    background: @theme_button_background_insensitive_breeze; }
    switch:disabled slider:active, switch:disabled slider:checked {
      color: @theme_button_foreground_active_insensitive_breeze; }

/************
 * Toolbars *
 ************/
searchbar > revealer > box,
.location-bar, .inline-toolbar, toolbar {
  -GtkWidget-window-dragging: true;
  padding: 4px;
  background-color: @theme_bg_color_breeze; }

toolbar {
  padding: 4px 3px 3px 4px; }
  toolbar:backdrop {
    background-color: @theme_unfocused_bg_color_breeze;
    box-shadow: none; }
  toolbar button {
    margin: 2px;
    padding: 3px; }
    toolbar button.image-button, toolbar button.text-button.image-button {
      padding: 3px; }
  toolbar separator {
    margin-left: 3px;
    margin-right: 3px; }
  toolbar entry {
    margin: 3px; }
  .osd toolbar {
    background-color: transparent; }
  toolbar.osd {
    padding: 13px;
    border: none;
    border-radius: 1.25mm;
    background-color: @theme_bg_color_breeze; }
    toolbar.osd:backdrop, label:backdrop selection.osd {
      border-color: @unfocused_borders_breeze;
      background-color: @theme_unfocused_bg_color_breeze;
      box-shadow: none; }
    toolbar.osd.left, toolbar.osd.right, toolbar.osd.top, toolbar.osd.bottom {
      border-radius: 0; }

.inline-toolbar {
  border-width: 0px 0px 1px 0px;
  padding: 3px;
  border-radius: 0; }

searchbar > revealer > box,
.location-bar {
  border-width: 0px 0px 1px 0px;
  padding: 3px; }

.inline-toolbar, searchbar > revealer > box,
.location-bar {
  border-style: solid;
  border-color: @borders_breeze;
  text-shadow: none;
  background-color: @theme_bg_color_breeze; }

/************
 * Tooltips *
 ************/
tooltip {
  color: @tooltip_text_breeze;
  padding: 4px;
  /* not working */
  border-radius: 1.25mm;
  box-shadow: none;
  text-shadow: none;
  border: 1px solid @tooltip_border_breeze; }
  tooltip.background {
    background-color: @tooltip_background_breeze;
    background-clip: padding-box; }
  tooltip.window-frame.csd {
    background-color: transparent;
    box-shadow: none; }
  tooltip decoration {
    background-color: transparent; }

tooltip *, tooltip button:link,
tooltip button:visited {
  padding: 0px;
  background-color: transparent;
  color: @tooltip_text_breeze; }

/**************
 * Tree Views *
 **************/
treeview.view {
  -GtkTreeview-grid-line-width: 0;
  -GtkTreeview-grid-line-pattern: "";
  -GtkTreeview-tree-line-width: 1;
  -GtkTreeview-tree-line-pattern: "";
  -GtkTreeview-expander-size: 16;
  border-left-color: @borders_breeze;
  border-top-color: transparent; }
  treeview.view:selected,
  headerbar.selection-mode .view.subtitle:link,
  headerbar.selection-mode button.view.subtitle:visited {
    border-radius: 0; }
  treeview.view:hover {
    background-color: alpha(@theme_selected_bg_color_breeze,0.3);
    border-left-color: @theme_fg_color_breeze;
    border-top-color: @theme_fg_color_breeze; }
  treeview.view:selected,
  headerbar.selection-mode .view.subtitle:link,
  headerbar.selection-mode button.view.subtitle:visited {
    background-color: @theme_selected_bg_color_breeze;
    border-left-color: @theme_selected_fg_color_breeze;
    border-top-color: @theme_selected_fg_color_breeze; }
  treeview.view:backdrop:selected {
    background-color: @theme_unfocused_selected_bg_color_breeze;
    border-left-color: @theme_unfocused_selected_fg_color_breeze;
    border-top-color: @theme_unfocused_selected_fg_color_breeze; }
  treeview.view:disabled, label:disabled selection.view {
    color: @insensitive_fg_color_breeze; }
    treeview.view:disabled:selected {
      color: @insensitive_selected_fg_color_breeze; }
      treeview.view:disabled:selected:backdrop {
        color: @insensitive_unfocused_selected_fg_color_breeze; }
    treeview.view:disabled:backdrop, label:disabled selection.view:backdrop, label:backdrop selection.view:disabled, label:disabled label:backdrop selection.view, label:backdrop label:disabled selection.view {
      color: @insensitive_unfocused_fg_color_breeze; }
  treeview.view.separator {
    min-height: 2px;
    color: @borders_breeze; }
  treeview.view.separator:backdrop, label:backdrop selection.separator {
    color: @unfocused_borders_breeze; }
  treeview.view:backdrop, label:backdrop selection.view {
    border-left-color: @unfocused_borders_breeze; }
  treeview.view:drop(active) {
    border-style: solid none;
    border-width: 1px;
    border-color: @theme_button_decoration_hover_breeze; }
  treeview.view.expander {
    min-width: 16px;
    min-height: 16px;
    -gtk-icon-source: -gtk-icontheme("go-next-symbolic");
    color: @theme_fg_color_breeze; }
    treeview.view.expander:dir(rtl) {
      -gtk-icon-source: -gtk-icontheme("go-next-rtl-symbolic"); }
    treeview.view.expander:hover {
      color: @theme_button_decoration_hover_breeze; }
    treeview.view.expander:selected,
    headerbar.selection-mode .expander.subtitle:link,
    headerbar.selection-mode button.expander.subtitle:visited {
      color: @theme_selected_fg_color_breeze; }
    treeview.view.expander:checked {
      -gtk-icon-source: -gtk-icontheme("go-down-symbolic"); }
      treeview.view.expander:checked:selected,
      headerbar.selection-mode .subtitle:checked:link,
      headerbar.selection-mode button.subtitle:checked:visited {
        color: @theme_selected_fg_color_breeze; }
  treeview.view header button {
    color: @theme_button_foreground_normal_breeze;
    background-color: @theme_button_background_normal_breeze;
    text-shadow: none;
    box-shadow: none; }
    treeview.view header button:hover {
      color: @theme_button_foreground_normal_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.5);
      box-shadow: none; }
    treeview.view header button:active {
      color: @theme_button_foreground_normal_breeze;
      background-color: alpha(@theme_button_decoration_hover_breeze,0.5); }
  treeview.view header button:last-child:backdrop, treeview.view header label:backdrop selection:last-child, label:backdrop treeview.view header selection:last-child, treeview.view header button:last-child {
    border-right-style: none; }
  treeview.view button.dnd:active, treeview.view button.dnd:selected,
  treeview.view headerbar.selection-mode .dnd.subtitle:link,
  headerbar.selection-mode treeview.view .dnd.subtitle:link,
  treeview.view headerbar.selection-mode button.dnd.subtitle:visited,
  headerbar.selection-mode treeview.view button.dnd.subtitle:visited, treeview.view button.dnd:hover, treeview.view button.dnd,
  treeview.view header.button.dnd:active,
  treeview.view header.button.dnd:selected,
  treeview.view header.button.dnd:hover,
  treeview.view header.button.dnd {
    padding: 0 6px;
    color: @theme_selected_fg_color_breeze;
    background-image: none;
    background-color: @theme_selected_bg_color_breeze;
    border-style: none;
    border-radius: 0;
    box-shadow: none;
    text-shadow: none; }

treeview.view header button, treeview.view header button:hover, treeview.view header button:active {
  padding: 6px;
  border-style: none solid solid none;
  border-radius: 0;
  background-image: none;
  border-color: @borders_breeze;
  text-shadow: none; }

/**********************
 * Window Decorations *
 *********************/
decoration {
  border-radius: 6px 6px 0 0;
  border-width: 0px;
  box-shadow: 0px 0px 16px rgba(0, 0, 0, 0.5), 0px 2px 8px rgba(0, 0, 0, 0.3);
  /* this is used for the resize cursor area */
  margin: 10px; }
  .maximized decoration, .fullscreen decoration, .tiled decoration {
    border-radius: 0; }
  .popup decoration {
    border-radius: 1.25mm;
    box-shadow: 0px 3px 10px -4px rgba(0, 0, 0, 0.27), 0px 5px 8px -4px rgba(0, 0, 0, 0.17); }
  .ssd decoration {
    box-shadow: 0 2px 6px 1px rgba(0, 0, 0, 0.1); }
  .csd decoration {
    border-radius: 6px; }
    .csd decoration.popup {
      box-shadow: 0px 3px 10px -4px rgba(0, 0, 0, 0.27), 0px 5px 8px -4px rgba(0, 0, 0, 0.17); }
    .csd decoration.tooltip {
      box-shadow: none; }
    .csd decoration.message-dialog {
      box-shadow: 0 2px 6px 1px rgba(0, 0, 0, 0.5); }
  .solid-csd decoration {
    border-radius: 0;
    margin: 0;
    padding: 0px;
    border: 5px solid @theme_titlebar_background_breeze;
    background-color: @theme_titlebar_background_light_breeze;
    box-shadow: none; }

dialog.solid-csd headerbar.titlebar,
dialog.solid-csd paned.titlebar,
dialog.solid-csd .titlebar,
dialog.solid-csd paned.titlebar headerbar,
window.solid-csd headerbar.titlebar,
window.solid-csd paned.titlebar,
window.solid-csd .titlebar,
window.solid-csd paned.titlebar headerbar {
  border-radius: 0; }

dialog headerbar.titlebar,
window headerbar.titlebar {
  min-height: 46px; }

dialog headerbar.default-decoration button.titlebutton,
dialog .titlebar.default-decoration button.titlebutton,
window headerbar.default-decoration button.titlebutton,
window .titlebar.default-decoration button.titlebutton {
  padding: 1px;
  min-height: 18px;
  min-width: 18px;
  margin: 0; }

dialog headerbar button.titlebutton image,
dialog .titlebar button.titlebutton image,
window headerbar button.titlebutton image,
window .titlebar button.titlebutton image {
  color: transparent; }

dialog headerbar button.titlebutton.close,
dialog .titlebar button.titlebutton.close,
window headerbar button.titlebutton.close,
window .titlebar button.titlebutton.close {
  border-image: none;
  box-shadow: none;
  background-position: center;
  background-repeat: no-repeat;
  background-size: 18px 18px;
  background-image: -gtk-recolor(url("../assets/breeze-close-symbolic.svg"), color @theme_text_color_breeze);
  -gtk-icon-source: none; }

dialog headerbar button.titlebutton.close:hover,
dialog .titlebar button.titlebutton.close:hover,
window headerbar button.titlebutton.close:hover,
window .titlebar button.titlebutton.close:hover {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-close-hover-symbolic.svg")); }

dialog headerbar button.titlebutton.close:active,
dialog .titlebar button.titlebutton.close:active,
window headerbar button.titlebutton.close:active,
window .titlebar button.titlebutton.close:active {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-close-active-symbolic.svg")); }

dialog headerbar button.titlebutton.close:backdrop, dialog headerbar label:backdrop selection.close, label:backdrop dialog headerbar selection.close,
dialog .titlebar button.titlebutton.close:backdrop,
dialog .titlebar label:backdrop selection.close,
label:backdrop dialog .titlebar selection.close,
window headerbar button.titlebutton.close:backdrop,
window headerbar label:backdrop selection.close,
label:backdrop window headerbar selection.close,
window .titlebar button.titlebutton.close:backdrop,
window .titlebar label:backdrop selection.close,
label:backdrop window .titlebar selection.close {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-close-symbolic.svg")); }

dialog headerbar button.titlebutton.maximize,
dialog .titlebar button.titlebutton.maximize,
window headerbar button.titlebutton.maximize,
window .titlebar button.titlebutton.maximize {
  border-image: none;
  box-shadow: none;
  background-position: center;
  background-repeat: no-repeat;
  background-size: 18px 18px;
  background-image: -gtk-recolor(url("../assets/breeze-maximize-symbolic.svg")); }

dialog headerbar button.titlebutton.maximize:hover,
dialog .titlebar button.titlebutton.maximize:hover,
window headerbar button.titlebutton.maximize:hover,
window .titlebar button.titlebutton.maximize:hover {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximize-hover-symbolic.svg")); }

dialog headerbar button.titlebutton.maximize:active,
dialog .titlebar button.titlebutton.maximize:active,
window headerbar button.titlebutton.maximize:active,
window .titlebar button.titlebutton.maximize:active {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximize-active-symbolic.svg")); }

dialog headerbar button.titlebutton.maximize:backdrop, dialog headerbar label:backdrop selection.maximize, label:backdrop dialog headerbar selection.maximize,
dialog .titlebar button.titlebutton.maximize:backdrop,
dialog .titlebar label:backdrop selection.maximize,
label:backdrop dialog .titlebar selection.maximize,
window headerbar button.titlebutton.maximize:backdrop,
window headerbar label:backdrop selection.maximize,
label:backdrop window headerbar selection.maximize,
window .titlebar button.titlebutton.maximize:backdrop,
window .titlebar label:backdrop selection.maximize,
label:backdrop window .titlebar selection.maximize {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximize-symbolic.svg")); }

dialog headerbar button.titlebutton.minimize,
dialog .titlebar button.titlebutton.minimize,
window headerbar button.titlebutton.minimize,
window .titlebar button.titlebutton.minimize {
  border-image: none;
  box-shadow: none;
  background-position: center;
  background-repeat: no-repeat;
  background-size: 18px 18px;
  background-image: -gtk-recolor(url("../assets/breeze-minimize-symbolic.svg")); }

dialog headerbar button.titlebutton.minimize:hover,
dialog .titlebar button.titlebutton.minimize:hover,
window headerbar button.titlebutton.minimize:hover,
window .titlebar button.titlebutton.minimize:hover {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-minimize-hover-symbolic.svg")); }

dialog headerbar button.titlebutton.minimize:active,
dialog .titlebar button.titlebutton.minimize:active,
window headerbar button.titlebutton.minimize:active,
window .titlebar button.titlebutton.minimize:active {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-minimize-active-symbolic.svg")); }

dialog headerbar button.titlebutton.minimize:backdrop, dialog headerbar label:backdrop selection.minimize, label:backdrop dialog headerbar selection.minimize,
dialog .titlebar button.titlebutton.minimize:backdrop,
dialog .titlebar label:backdrop selection.minimize,
label:backdrop dialog .titlebar selection.minimize,
window headerbar button.titlebutton.minimize:backdrop,
window headerbar label:backdrop selection.minimize,
label:backdrop window headerbar selection.minimize,
window .titlebar button.titlebutton.minimize:backdrop,
window .titlebar label:backdrop selection.minimize,
label:backdrop window .titlebar selection.minimize {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-minimize-symbolic.svg")); }

.maximized dialog headerbar button.titlebutton.maximize, .maximized dialog .titlebar button.titlebutton.maximize, .maximized window headerbar button.titlebutton.maximize, .maximized window .titlebar button.titlebutton.maximize {
  border-image: none;
  box-shadow: none;
  background-position: center;
  background-size: 18px 18px;
  background-repeat: no-repeat;
  background-image: -gtk-recolor(url("../assets/breeze-maximized-symbolic.svg")); }

.maximized dialog headerbar button.titlebutton.maximize:hover, .maximized dialog .titlebar button.titlebutton.maximize:hover, .maximized window headerbar button.titlebutton.maximize:hover, .maximized window .titlebar button.titlebutton.maximize:hover {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximized-hover-symbolic.svg")); }

.maximized dialog headerbar button.titlebutton.maximize:active, .maximized dialog .titlebar button.titlebutton.maximize:active, .maximized window headerbar button.titlebutton.maximize:active, .maximized window .titlebar button.titlebutton.maximize:active {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximized-active-symbolic.svg")); }

.maximized dialog headerbar button.titlebutton.maximize:backdrop, .maximized dialog headerbar label:backdrop selection.maximize, label:backdrop .maximized dialog headerbar selection.maximize, .maximized dialog .titlebar button.titlebutton.maximize:backdrop, .maximized dialog .titlebar label:backdrop selection.maximize, label:backdrop .maximized dialog .titlebar selection.maximize, .maximized window headerbar button.titlebutton.maximize:backdrop, .maximized window headerbar label:backdrop selection.maximize, label:backdrop .maximized window headerbar selection.maximize, .maximized window .titlebar button.titlebutton.maximize:backdrop, .maximized window .titlebar label:backdrop selection.maximize, label:backdrop .maximized window .titlebar selection.maximize {
  border-color: transparent;
  background-color: transparent;
  background-image: -gtk-recolor(url("../assets/breeze-maximized-symbolic.svg")); }

dialog headerbar.selection-mode button.titlebutton,
dialog .titlebar.selection-mode button.titlebutton,
window headerbar.selection-mode button.titlebutton,
window .titlebar.selection-mode button.titlebutton {
  text-shadow: none; }
  dialog headerbar.selection-mode button.titlebutton:backdrop, dialog headerbar.selection-mode label:backdrop selection.titlebutton, label:backdrop dialog headerbar.selection-mode selection.titlebutton,
  dialog .titlebar.selection-mode button.titlebutton:backdrop,
  dialog .titlebar.selection-mode label:backdrop selection.titlebutton,
  label:backdrop dialog .titlebar.selection-mode selection.titlebutton,
  window headerbar.selection-mode button.titlebutton:backdrop,
  window headerbar.selection-mode label:backdrop selection.titlebutton,
  label:backdrop window headerbar.selection-mode selection.titlebutton,
  window .titlebar.selection-mode button.titlebutton:backdrop,
  window .titlebar.selection-mode label:backdrop selection.titlebutton,
  label:backdrop window .titlebar.selection-mode selection.titlebutton {
    -gtk-icon-shadow: none; }

hdydialer button {
  font-weight: lighter;
  background-color: transparent;
  border: 0;
  box-shadow: none; }
  hdydialer button:backdrop {
    background-color: transparent; }
  hdydialer button:focus {
    background-color: transparent;
    border: none; }

hdyviewswitcher > button {
  border: 0;
  background-color: transparent; }
  hdyviewswitcher > button:backdrop:hover, hdyviewswitcher > button:hover, hdyviewswitcher > button:active, hdyviewswitcher > button:hover:focus, hdyviewswitcher > button:active:focus, hdyviewswitcher > button:checked, hdyviewswitcher > button:checked:hover {
    background-color: transparent; }
  hdyviewswitcher > button:checked, hdyviewswitcher > button:checked:backdrop, label:backdrop hdyviewswitcher > selection:checked {
    border-top: 0;
    border-left: 0;
    border-right: 0;
    background-color: transparent; }
    hdyviewswitcher > button:checked > stack, hdyviewswitcher > button:checked:backdrop > stack, label:backdrop hdyviewswitcher > selection:checked > stack {
      border-bottom: 3px solid transparent;
      border-top: 3px solid @theme_button_decoration_focus_breeze; }
  hdyviewswitcher > button.needs-attention > stack > box label {
    animation: needs_attention 150ms ease-in;
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_button_decoration_focus_breeze), to(transparent));
    background-size: 6px 6px, 6px 6px;
    background-repeat: no-repeat;
    background-position: right 0px, right 1px; }

headerbar hdyviewswitcher > button:checked > stack {
  border-top: 3px solid transparent;
  border-bottom: 3px solid @theme_button_decoration_focus_breeze; }
  headerbar hdyviewswitcher > button:checked > stack:backdrop {
    border-top: 3px solid transparent;
    border-bottom: 3px solid @theme_button_decoration_focus_breeze; }

viewswitcher {
  border-radius: 0;
  margin: 0;
  padding: 0;
  background-color: transparent; }
  viewswitcher button {
    border-radius: 0;
    margin: 0;
    padding: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none; }
    viewswitcher button > stack {
      color: @theme_button_foreground_normal_breeze; }
      viewswitcher button > stack > box label.active {
        font-weight: bold; }
      viewswitcher button > stack > box.narrow {
        font-size: 0.75rem;
        padding-top: 7px;
        padding-bottom: 5px; }
        viewswitcher button > stack > box.narrow image,
        viewswitcher button > stack > box.narrow label {
          padding-left: 8px;
          padding-right: 8px; }
      viewswitcher button > stack > box.wide {
        padding: 8px 12px; }
        viewswitcher button > stack > box.wide label:dir(ltr) {
          padding-right: 7px; }
        viewswitcher button > stack > box.wide label:dir(rtl) {
          padding-left: 7px; }
    viewswitcher button:backdrop, viewswitcher button:active, viewswitcher button:active:focus, viewswitcher button:checked:hover, viewswitcher button:checked:focus:hover, viewswitcher button:backdrop:checked:hover, viewswitcher button:focus {
      background-color: transparent; }
    viewswitcher button:hover, viewswitcher button:focus:hover, viewswitcher button:backdrop:hover, viewswitcher button:backdrop:focus:hover {
      background-color: @insensitive_borders_breeze; }
    viewswitcher button:checked, viewswitcher button:checked:backdrop, viewswitcher label:backdrop selection:checked, label:backdrop viewswitcher selection:checked,
    viewswitcher button label:backdrop viewswitcher > selection:checked {
      border-top: 0;
      border-left: 0;
      border-right: 0;
      background-color: transparent; }
      viewswitcher button:checked > stack, viewswitcher button:checked:backdrop > stack, viewswitcher label:backdrop selection:checked > stack, label:backdrop viewswitcher selection:checked > stack,
      viewswitcher button label:backdrop viewswitcher > selection:checked > stack {
        border-bottom: 3px solid transparent;
        border-top: 3px solid @theme_button_decoration_focus_breeze; }
    viewswitcher button.needs-attention > stack > box label {
      animation: needs_attention 150ms ease-in;
      background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_button_decoration_focus_breeze), to(transparent));
      background-size: 6px 6px, 6px 6px;
      background-repeat: no-repeat;
      background-position: right 0px, right 1px; }
    viewswitcher button.needs-attention:checked > stack > box label {
      animation: needs_attention 150ms ease-out;
      background-image: none; }

headerbar viewswitcher button:checked > stack {
  border-top: 3px solid transparent;
  border-bottom: 3px solid @theme_button_decoration_focus_breeze; }
  headerbar viewswitcher button:checked > stack > box label {
    font-weight: bold; }

headerbar viewswitcher button:checked > stack:backdrop {
  border-top: 3px solid transparent;
  border-bottom: 3px solid @theme_button_decoration_focus_breeze; }

viewswitcherbar actionbar > revealer > box {
  margin: 0;
  padding: 0; }

window.unified {
  border-radius: 6px; }
  window.unified.maximized, window.unified.fullscreen, window.unified.tiled {
    border-radius: 0; }

assistant .sidebar {
  background-color: @theme_base_color_breeze;
  color: @theme_text_color_breeze;
  border-top: 1px solid @borders_breeze;
  border-right: 1px solid @borders_breeze; }
  assistant .sidebar:backdrop, assistant label:backdrop selection.sidebar, label:backdrop assistant selection.sidebar {
    background-color: @theme_unfocused_base_color_breeze;
    color: @theme_unfocused_text_color_breeze;
    border-color: @unfocused_borders_breeze; }

assistant.csd .sidebar {
  border-top-style: none; }

assistant .sidebar label {
  padding: 6px 12px; }

assistant .sidebar label.highlight {
  background-color: @theme_selected_bg_color_breeze;
  color: @theme_fg_color_breeze; }

.floating-bar {
  background-color: @tooltip_background_breeze;
  color: @tooltip_text_breeze;
  border: 1px solid @tooltip_border_breeze;
  border-radius: 1.25mm;
  margin: 3px; }

window.background.chromium {
  background-color: @theme_base_color_breeze;
  border-color: @borders_breeze; }
  window.background.chromium menubar,
  window.background.chromium .menubar {
    color: @theme_fg_color_breeze;
    background-color: @theme_bg_color_breeze; }
    window.background.chromium menubar:backdrop,
    window.background.chromium .menubar:backdrop,
    window.background.chromium label:backdrop selection.menubar,
    label:backdrop window.background.chromium selection.menubar {
      background-color: @theme_unfocused_bg_color_breeze;
      color: @theme_unfocused_fg_color_breeze; }
  window.background.chromium entry {
    background-color: @theme_base_color_breeze; }
  window.background.chromium.csd menubar,
  window.background.chromium.csd .menubar {
    color: @theme_titlebar_foreground_breeze;
    background-color: @theme_titlebar_background_breeze; }
    window.background.chromium.csd menubar:backdrop,
    window.background.chromium.csd .menubar:backdrop,
    window.background.chromium.csd label:backdrop selection.menubar,
    label:backdrop window.background.chromium.csd selection.menubar {
      background-color: @theme_titlebar_background_backdrop_breeze;
      color: @theme_titlebar_foreground_backdrop_breeze; }
  window.background.chromium headerbar button.titlebutton.close,
  window.background.chromium .titlebar button.titlebutton.close {
    color: transparent;
    background-image: -gtk-scaled(url("../assets/titlebutton-close.png"), url("../assets/titlebutton-close@2.png")); }
    window.background.chromium headerbar button.titlebutton.close:hover,
    window.background.chromium .titlebar button.titlebutton.close:hover {
      background-image: -gtk-scaled(url("../assets/titlebutton-close-hover.png"), url("../assets/titlebutton-close-hover@2.png")); }
    window.background.chromium headerbar button.titlebutton.close:active,
    window.background.chromium .titlebar button.titlebutton.close:active {
      background-image: -gtk-scaled(url("../assets/titlebutton-close-active.png"), url("../assets/titlebutton-close-active@2.png")); }
    window.background.chromium headerbar button.titlebutton.close:backdrop, window.background.chromium headerbar label:backdrop selection.close, label:backdrop window.background.chromium headerbar selection.close,
    window.background.chromium .titlebar button.titlebutton.close:backdrop,
    window.background.chromium .titlebar label:backdrop selection.close,
    label:backdrop window.background.chromium .titlebar selection.close {
      background-image: -gtk-scaled(url("../assets/titlebutton-close-backdrop.png"), url("../assets/titlebutton-close-backdrop@2.png")); }
  window.background.chromium headerbar button.titlebutton.maximize,
  window.background.chromium .titlebar button.titlebutton.maximize {
    color: transparent;
    background-image: -gtk-scaled(url("../assets/titlebutton-maximize.png"), url("../assets/titlebutton-maximize@2.png")); }
    window.background.chromium headerbar button.titlebutton.maximize:hover,
    window.background.chromium .titlebar button.titlebutton.maximize:hover {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-hover.png"), url("../assets/titlebutton-maximize-hover@2.png")); }
    window.background.chromium headerbar button.titlebutton.maximize:active,
    window.background.chromium .titlebar button.titlebutton.maximize:active {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-active.png"), url("../assets/titlebutton-maximize-active@2.png")); }
    window.background.chromium headerbar button.titlebutton.maximize:backdrop, window.background.chromium headerbar label:backdrop selection.maximize, label:backdrop window.background.chromium headerbar selection.maximize,
    window.background.chromium .titlebar button.titlebutton.maximize:backdrop,
    window.background.chromium .titlebar label:backdrop selection.maximize,
    label:backdrop window.background.chromium .titlebar selection.maximize {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-backdrop.png"), url("../assets/titlebutton-maximize-backdrop@2.png")); }
  window.background.chromium headerbar button.titlebutton.minimize,
  window.background.chromium .titlebar button.titlebutton.minimize {
    color: transparent;
    background-image: -gtk-scaled(url("../assets/titlebutton-minimize.png"), url("../assets/titlebutton-minimize@2.png")); }
    window.background.chromium headerbar button.titlebutton.minimize:hover,
    window.background.chromium .titlebar button.titlebutton.minimize:hover {
      background-image: -gtk-scaled(url("../assets/titlebutton-minimize-hover.png"), url("../assets/titlebutton-minimize-hover@2.png")); }
    window.background.chromium headerbar button.titlebutton.minimize:active,
    window.background.chromium .titlebar button.titlebutton.minimize:active {
      background-image: -gtk-scaled(url("../assets/titlebutton-minimize-active.png"), url("../assets/titlebutton-minimize-active@2.png")); }
    window.background.chromium headerbar button.titlebutton.minimize:backdrop, window.background.chromium headerbar label:backdrop selection.minimize, label:backdrop window.background.chromium headerbar selection.minimize,
    window.background.chromium .titlebar button.titlebutton.minimize:backdrop,
    window.background.chromium .titlebar label:backdrop selection.minimize,
    label:backdrop window.background.chromium .titlebar selection.minimize {
      background-image: -gtk-scaled(url("../assets/titlebutton-minimize-backdrop.png"), url("../assets/titlebutton-minimize-backdrop@2.png")); }
  window.background.chromium.maximized headerbar button.titlebutton.maximize,
  .maximized .titlebar button.titlebutton.maximize {
    color: transparent;
    background-image: -gtk-scaled(url("../assets/titlebutton-maximize-maximized.png"), url("../assets/titlebutton-maximize-maximized@2.png")); }
    window.background.chromium.maximized headerbar button.titlebutton.maximize:hover,
    .maximized .titlebar button.titlebutton.maximize:hover {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-maximized-hover.png"), url("../assets/titlebutton-maximize-maximized-hover@2.png")); }
    window.background.chromium.maximized headerbar button.titlebutton.maximize:active,
    .maximized .titlebar button.titlebutton.maximize:active {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-maximized-active.png"), url("../assets/titlebutton-maximize-maximized-active@2.png")); }
    window.background.chromium.maximized headerbar button.titlebutton.maximize:backdrop, window.background.chromium.maximized headerbar label:backdrop selection.maximize, label:backdrop window.background.chromium.maximized headerbar selection.maximize,
    .maximized .titlebar button.titlebutton.maximize:backdrop,
    .maximized .titlebar label:backdrop selection.maximize,
    label:backdrop .maximized .titlebar selection.maximize {
      background-image: -gtk-scaled(url("../assets/titlebutton-maximize-maximized-backdrop.png"), url("../assets/titlebutton-maximize-maximized-backdrop@2.png")); }

#MozillaGtkWidget scrollbar {
  padding: 0px; }
  #MozillaGtkWidget scrollbar slider {
    margin: 0px;
    background: none;
    background-color: alpha(@theme_fg_color_breeze,0.5); }
    #MozillaGtkWidget scrollbar slider:hover {
      background-color: alpha(@theme_button_decoration_hover_breeze,0.5); }
    #MozillaGtkWidget scrollbar slider:focus {
      background-color: alpha(@theme_button_decoration_focus_breeze,0.5); }

]], gtk_colors)
end

return M
local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(
[[
# Theme:       Solarized-OKLab
# Description: Solarized-OKLab theme for GTK+2.0

gtk-color-scheme = "text_color:${base0}"
gtk-color-scheme = "base_color:${black}"
gtk-color-scheme = "insensitive_base_color:${base03}"
gtk-color-scheme = "fg_color:${base0}"
gtk-color-scheme = "bg_color:${base04}"
gtk-color-scheme = "selected_fg_color:$black}"
gtk-color-scheme = "selected_bg_color:${violet}"
gtk-color-scheme = "button_fg_color:${base0}"
gtk-color-scheme = "tooltip_fg_color:${base0}"
gtk-color-scheme = "tooltip_bg_color:${base04}"
gtk-color-scheme = "insensitive_fg_color:${base02}"
gtk-color-scheme = "insensitive_text_color:${base02}"
gtk-color-scheme = "button_insensitive_fg_color:${base02}"
gtk-color-scheme = "button_active:${violet}"
gtk-color-scheme = "border_color:${base02}"

gtk-auto-mnemonics  = 1
style "default"
{
    xthickness  = 1
    ythickness  = 1

    # Style Properties

    GtkScrollbar::activate-slider               = 1
    GtkWidget::focus-line-width                 = 0
    GtkWidget::new-tooltip-style                = 1
    GtkWidget::tooltip-alpha                    = 230
    GtkWidget::tooltip-radius                   = 2
    GtkMenuBar::window-dragging                 = 1
    GtkToolbar::window-dragging                 = 1
    GtkToolbar::internal-padding                = 5
    GtkToolButton::icon-spacing                 = 4

    GtkSeparatorMenuItem::horizontal-padding    = 3
    GtkSeparatorMenuItem::wide-separators       = 1
    GtkSeparatorMenuItem::separator-height      = 1

    GtkCheckMenuItem::indicator-size            = 18
    GtkRadioMenuItem::indicator-size            = 18

    GtkButton::child-displacement-y             = 0
    GtkButton::default-border                   = { 0, 0, 0, 0 }
    GtkButton::default-outside_border           = { 0, 0, 0, 0 }

    GtkScrollbar::trough-border                 = 0
    GtkScrollbar::slider-width                  = 20
    GtkRange::trough-border                     = 0
    GtkRange::slider-width                      = 7
    GtkRange::stepper-size                      = 0

    GtkScrollbar::has-backward-stepper          = 1
    GtkScrollbar::has-forward-stepper           = 1
    GtkScrollbar::stepper-size                  = 4
    GtkScrollbar::stepper-spacing               = 0
    GtkScrolledWindow ::scrollbar-spacing       = 0
    GtkScrolledWindow ::scrollbars-within-bevel = 1

    GtkVScale::slider_length                    = 20
    GtkVScale::slider_width                     = 20
    GtkHScale::slider_length                    = 20
    GtkHScale::slider_width                     = 20

    GtkStatusbar::shadow_type                   = GTK_SHADOW_NONE
    GtkSpinButton::shadow_type                  = GTK_SHADOW_NONE
    GtkMenuBar::shadow-type                     = GTK_SHADOW_NONE
    GtkMenuBar::internal-padding                = 3
    GtkMenu::horizontal-padding                 = 0
    GtkMenu::vertical-padding                   = 0

    GtkNotebook::tab-overlap                    = 1
    GtkNotebook::tab-curvature                  = 3

    GtkCheckButton::indicator_spacing           = 3
    #GtkOptionMenu::indicator_spacing           = { 0, 0, 0, 0 }

    GtkTreeView::row_ending_details             = 0
    GtkTreeView::expander-size                  = 12
    GtkTreeView::vertical-separator             = 1
    GtkTreeView::horizontal-separator           = 4
    GtkTreeView::allow-rules                    = 1

    GtkProgressBar::min-horizontal-bar-height   = 8
    GtkProgressBar::min-vertical-bar-width      = 8

    GtkEntry::state-hint                        = 1

    # Colors

    bg[NORMAL]        = @bg_color
    bg[PRELIGHT]      = @bg_color
    bg[SELECTED]      = @selected_bg_color
    bg[INSENSITIVE]   = @bg_color
    bg[ACTIVE]        = @bg_color

    fg[NORMAL]        = @fg_color
    fg[PRELIGHT]      = @fg_color
    fg[SELECTED]      = @selected_fg_color
    fg[INSENSITIVE]   = @insensitive_fg_color
    fg[ACTIVE]        = @fg_color

    text[NORMAL]      = @text_color
    text[PRELIGHT]    = @text_color
    text[SELECTED]    = @selected_fg_color
    text[INSENSITIVE] = @insensitive_text_color
    text[ACTIVE]      = @selected_fg_color

    base[NORMAL]      = @base_color
    base[PRELIGHT]    = @base_color
    base[SELECTED]    = @selected_bg_color
    base[INSENSITIVE] = @bg_color
    base[ACTIVE]      = @selected_bg_color

    # All pixmap options are consolidated below this point

    engine "pixmap"
    {

    # Check Buttons

    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = NORMAL
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = PRELIGHT
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked-hover.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = ACTIVE
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = SELECTED
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = INSENSITIVE
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked-insensitive.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = NORMAL
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = PRELIGHT
            shadow                  = IN
            overlay_file            = "../assets/check-checked-hover.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = ACTIVE
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = SELECTED
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = INSENSITIVE
            shadow                  = IN
            overlay_file            = "../assets/check-checked-insensitive.png"
            overlay_stretch         = FALSE
    }

    # Radio Buttons

    image
    {
            function                = OPTION
            state                   = NORMAL
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = PRELIGHT
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked-hover.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = ACTIVE
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = SELECTED
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = INSENSITIVE
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked-insensitive.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = NORMAL
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = PRELIGHT
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-hover.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = ACTIVE
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = SELECTED
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
            state                   = INSENSITIVE
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-insensitive.png"
            overlay_stretch         = FALSE
        }

    # Arrows

    image
    {
      function              = ARROW
      state                 = NORMAL
      overlay_file          = "../assets/arrow-up.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                 = PRELIGHT
      overlay_file          = "../assets/arrow-up-hover.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                 = ACTIVE
      overlay_file          = "../assets/arrow-up-active.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                 = INSENSITIVE
      overlay_file          = "../assets/arrow-up-insensitive.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }

    image
    {
    function                = ARROW
      state                 = NORMAL
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }
    image
    {
      function              = ARROW
      state                 = PRELIGHT
      overlay_file          = "../assets/arrow-down-hover.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }
    image
    {
      function              = ARROW
      state                 = ACTIVE
      overlay_file          = "../assets/arrow-down-active.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }

    image
    {
      function              = ARROW
      state                 = INSENSITIVE
      overlay_file          = "../assets/arrow-down-insensitive.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }

    image
    {
      function              = ARROW
      state                 = NORMAL
      overlay_file          = "../assets/arrow-left.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = LEFT
    }
    image
    {
        function            = ARROW
        state               = PRELIGHT
        overlay_file        = "../assets/arrow-left-hover.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }
    image
    {
        function            = ARROW
        state               = ACTIVE
        overlay_file        = "../assets/arrow-left-active.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }
    image
    {
        function            = ARROW
        state               = INSENSITIVE
        overlay_file        = "../assets/arrow-left-insensitive.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }

    image
    {
        function                = ARROW
        state                     = NORMAL
        overlay_file          = "../assets/arrow-right.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = PRELIGHT
        overlay_file          = "../assets/arrow-right-hover.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = ACTIVE
        overlay_file          = "../assets/arrow-right-active.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = INSENSITIVE
        overlay_file          = "../assets/arrow-right-insensitive.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }


    # Option Menu ../assets

    image
    {
      function            = TAB
      state                 = INSENSITIVE
      overlay_file        = "../assets/arrow-down-insensitive.png"
      overlay_stretch     = FALSE
    }
    image
    {
      function              = TAB
      state                   = NORMAL
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
    }
    image
    {
      function              = TAB
      state                   = PRELIGHT
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
    }

    #Lines

    image
    {
       function         = VLINE
       file               = "../assets/handle-v.png"
       border             = { 0, 0, 0, 0 }
       stretch          = TRUE
    }
    image
    {
      function        = HLINE
      file                = "../assets/line-h.png"
      border              = { 0, 0, 0, 0 }
      stretch             = TRUE
    }

    # Handles

    image
    {
      function              = HANDLE
      overlay_file          = "../assets/handle-h.png"
      overlay_stretch       = FALSE
      orientation             = HORIZONTAL
    }
    image
    {
      function              = HANDLE
      overlay_file          = "../assets/handle-v.png"
      overlay_stretch       = FALSE
      orientation             = VERTICAL
    }

    # Expanders

    image
    {
        function            = EXPANDER
        expander_style    = COLLAPSED
        file                  = "../assets/arrow-right.png"
    }

    image
    {
        function            = EXPANDER
        expander_style    = EXPANDED
        file                  = "../assets/arrow-down.png"
    }

    image
    {
        function          = EXPANDER
        expander_style  = SEMI_EXPANDED
        file                = "../assets/arrow-down.png"
    }

    image
    {
        function            = EXPANDER
        expander_style    = SEMI_COLLAPSED
        file                  = "../assets/arrow-right.png"
    }

    image
    {
        function            = RESIZE_GRIP
        state                 = NORMAL
        detail              = "statusbar"
        overlay_file        = "../assets/null.png"
        overlay_border    = { 0,0,0,0 }
        overlay_stretch   = FALSE
    }

    # Shadows ( this area needs help :P )

    image
    {
       function         = SHADOW_GAP
       file             = "../assets/null.png"
       border             = { 4, 4, 4, 4 }
       stretch          = TRUE
    }
  }
}


style "button"
{
  xthickness  = 4
  ythickness  = 5

  engine "pixmap"
  {
    image
    {
      function      = BOX
      state         = NORMAL
      file          = "../assets/button.png"
      border        = {4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
    {
      function      = BOX
      state         = PRELIGHT
      file          = "../assets/button-hover.png"
      border        = { 4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
    {
      function      = BOX
      state         = ACTIVE
      file          = "../assets/button-active.png"
      border        = { 4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
   {
     function       = BOX
     state          = INSENSITIVE
     file           = "../assets/button-insensitive.png"
     border         = { 4, 4, 4, 4 }
     stretch        = TRUE
    }



    # Arrows

    image
    {
      function              = ARROW
      state                   = NORMAL
      overlay_file          = "../assets/arrow-up.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                   = PRELIGHT
      overlay_file          = "../assets/arrow-up.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                   = ACTIVE
      overlay_file          = "../assets/arrow-up.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }
    image
    {
      function              = ARROW
      state                   = INSENSITIVE
      overlay_file          = "../assets/arrow-up-insensitive.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = UP
    }

    image
    {
    function                = ARROW
      state                   = NORMAL
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }
    image
    {
      function              = ARROW
      state                   = PRELIGHT
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }
    image
    {
      function              = ARROW
      state                   = ACTIVE
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }

    image
    {
      function              = ARROW
      state                   = INSENSITIVE
      overlay_file          = "../assets/arrow-down-insensitive.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = DOWN
    }

    image
    {
      function              = ARROW
      state                   = NORMAL
      overlay_file          = "../assets/arrow-left.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = LEFT
    }
    image
    {
        function                = ARROW
        state                   = PRELIGHT
        overlay_file          = "../assets/arrow-left.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }
    image
    {
        function                = ARROW
        state                   = ACTIVE
        overlay_file          = "../assets/arrow-left.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }
    image
    {
        function                = ARROW
        state                   = INSENSITIVE
        overlay_file          = "../assets/arrow-left-insensitive.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = LEFT
    }

    image
    {
        function                = ARROW
        state                     = NORMAL
        overlay_file          = "../assets/arrow-right.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = PRELIGHT
        overlay_file          = "../assets/arrow-right.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = ACTIVE
        overlay_file          = "../assets/arrow-right.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }
    image
    {
        function                = ARROW
        state                   = INSENSITIVE
        overlay_file          = "../assets/arrow-right-insensitive.png"
        overlay_border      = { 0, 0, 0, 0 }
        overlay_stretch     = FALSE
        arrow_direction     = RIGHT
    }




    image
    {
      function            = TAB
      state                 = INSENSITIVE
      overlay_file        = "../assets/arrow-down-insensitive.png"
      overlay_stretch     = FALSE
    }
    image
    {
      function              = TAB
      state                   = NORMAL
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
    }
    image
    {
      function              = TAB
      state                   = PRELIGHT
      overlay_file          = "../assets/arrow-down.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
    }
  }
}

style "togglebutton"
{
  xthickness  = 4
  ythickness  = 5

  engine "pixmap"
  {
    image
    {
      function      = BOX
      state         = NORMAL
      file          = "../assets/togglebutton.png"
      border        = {4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
    {
      function      = BOX
      state         = PRELIGHT
      file          = "../assets/togglebutton-hover.png"
      border        = { 4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
    {
      function      = BOX
      state         = ACTIVE
      file          = "../assets/togglebutton-active.png"
      border        = { 4, 4, 4, 4 }
      stretch       = TRUE
    }
    image
   {
     function       = BOX
     state          = INSENSITIVE
     file           = "../assets/togglebutton-insensitive.png"
     border         = { 4, 4, 4, 4 }
     stretch        = TRUE
    }
  }
}

style "spinbutton" = "default"
{
  #bg[NORMAL] = @bg_color

  xthickness  = 3
  ythickness  = 3
  GtkWidget::interior_focus = 1

engine "pixmap"
  {
    image
    {
      function      = ARROW
    }

  #Spin-up
  image
  {
    function          = BOX
    state             = NORMAL
    detail            = "spinbutton_up"
    file              = "../assets/spinbutton-up.png"
    border            = { 5, 5, 5, 5 }
    stretch           = TRUE
    overlay_file      = "../assets/arrow-small-up.png"
    overlay_stretch   = FALSE
  }
  image
  {
    function          = BOX
    state             = PRELIGHT
    detail            = "spinbutton_up"
    file              = "../assets/spinbutton-up.png"
    border            = { 5, 5, 5, 5 }
    stretch           = TRUE
    overlay_file      = "../assets/arrow-small-up-hover.png"
    overlay_stretch   = FALSE
  }
  image
  {
    function          = BOX
    state             = INSENSITIVE
    detail            = "spinbutton_up"
    file              = "../assets/spinbutton-up-insensitive.png"
    border            = { 5, 5, 5, 5 }
    stretch           = TRUE
    overlay_file      = "../assets/arrow-small-up-insensitive.png"
    overlay_stretch   = FALSE
  }
  image
  {
    function          = BOX
    state             = ACTIVE
    detail            = "spinbutton_up"
    file              = "../assets/spinbutton-up.png"
    border            = { 5, 5, 5, 5 }
    stretch           = TRUE
    overlay_file      = "../assets/arrow-small-up-active.png"
    overlay_stretch   = FALSE
  }

  # Spin-Down
    image
    {
      function        = BOX
      state           = NORMAL
      detail          = "spinbutton_down"
      file            = "../assets/spinbutton-down.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      overlay_file    = "../assets/arrow-small-down.png"
      overlay_stretch = FALSE
    }
    image
    {
      function        = BOX
      state           = PRELIGHT
      detail          = "spinbutton_down"
      file            = "../assets/spinbutton-down.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      overlay_file    = "../assets/arrow-small-down-hover.png"
      overlay_stretch = FALSE
    }
    image
    {
      function        = BOX
      state           = INSENSITIVE
      detail          = "spinbutton_down"
      file            = "../assets/spinbutton-down-insensitive.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      overlay_file    = "../assets/arrow-small-down-insensitive.png"
      overlay_stretch = FALSE
    }
    image
    {
      function        = BOX
      state           = ACTIVE
      detail          = "spinbutton_down"
      file            = "../assets/spinbutton-down.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      overlay_file    = "../assets/arrow-small-down-hover.png"
      overlay_stretch = FALSE
    }
  }
}

style "button_label" {
  fg[NORMAL]      = @button_fg_color
  fg[ACTIVE]      = @button_fg_color
  fg[INSENSITIVE] = @button_insensitive_fg_color
}

style "combobox_separator"
{
  xthickness = 0
  ythickness = 0
  GtkWidget::wide-separators = 1
}


style "menubar"
{
    #bg[SELECTED] = @selected_fg_color

	fg[NORMAL] = @fg_color
	fg[SELECTED] = @selected_fg_color

    text[PRELIGHT] = @fg_color

    xthickness  = 0
    ythickness  = 0

    engine "pixmap"
    {
    image
        {
          function      = BOX
          recolorable   = TRUE
          state         = PRELIGHT
          file          = "../assets/menubar-button.png"

          border          = { 4, 4, 4, 4 }
          stretch         = TRUE
        }
    }
}

style "menu"
{
    xthickness  = 0
    ythickness  = 0

    #GtkMenuItem::arrow-scaling  = 0.4

    engine "pixmap" { # For menus that use horizontal lines rather than gtkseparator

    image {
      function = HLINE
      file = "../assets/line-h.png"
      border = { 1, 1, 1, 1 }
      stretch = TRUE
    }
  }
}

style "menu_item"
{
    xthickness  = 2
    ythickness  = 4

    bg[PRELIGHT]      = @button_active
    fg[PRELIGHT]      = @selected_fg_color
    text[PRELIGHT]  = @selected_fg_color

    GtkMenuItem::toggle-spacing = 10
    GtkMenuItem::arrow-spacing = 10

    engine "pixmap"
    {

    # Check Buttons

    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = NORMAL
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked.png"
            overlay_stretch         = TRUE  #needed for LibreOffice
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = PRELIGHT
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = ACTIVE
            shadow                  = OUT
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
            state                   = INSENSITIVE
            shadow                  = OUT
            overlay_file            = "../assets/check-unchecked-insensitive.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
              state                   = NORMAL
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch       = TRUE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
                state                 = PRELIGHT
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = CHECK
            recolorable             = TRUE
                state                 = ACTIVE
            shadow                  = IN
            overlay_file            = "../assets/check-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
              function              = CHECK
            recolorable             = TRUE
            state                     = INSENSITIVE
            shadow                  = IN
            overlay_file            = "../assets/check-checked-insensitive.png"
            overlay_stretch         = TRUE
    }

    # Radio Buttons

    image
    {
            function                = OPTION
            state                   = NORMAL
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = OPTION
            state                   = PRELIGHT
            shadow                  = OUT
            overlay_file            = "../assets/radio-unchecked.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = OPTION
            state                   = ACTIVE
            shadow                  = OUT
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = OPTION
            state                   = INSENSITIVE
            shadow                = OUT
            overlay_file            = "../assets/radio-unchecked-insensitive.png"
            overlay_stretch         = FALSE
        }
    image
    {
            function                = OPTION
              state                     = NORMAL
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = OPTION
              state                   = PRELIGHT
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch         = TRUE
        }
    image
    {
            function                = OPTION
              state                   = ACTIVE
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-active.png"
            overlay_stretch       = TRUE
        }
    image
    {
            function                = OPTION
              state                     = INSENSITIVE
            shadow                  = IN
            overlay_file            = "../assets/radio-checked-insensitive.png"
            overlay_stretch         = TRUE
        }
    image
        {
            function        = SHADOW # This fixes boxy Qt menu items
              file        = "../assets/null.png"
              border      = { 10, 10, 10, 10 }
              stretch     = TRUE
        }

    # Arrow Buttons

    image
    {
      function              = ARROW
      state                   = NORMAL
      overlay_file          = "../assets/menu-arrow.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = RIGHT
    }
    image
    {
      function              = ARROW
      state                   = PRELIGHT
      overlay_file          = "../assets/menu-arrow-selected.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = RIGHT
    }
    image
    {
      function              = ARROW
      state                   = INSENSITIVE
      overlay_file          = "../assets/menu-arrow-insensitive.png"
      overlay_border        = { 0, 0, 0, 0 }
      overlay_stretch       = FALSE
      arrow_direction       = RIGHT
    }
 }
}

style "menubar_item"
{
    xthickness  = 2
    ythickness  = 2
    bg[PRELIGHT]    = @selected_fg_color
    fg[PRELIGHT]    = @selected_fg_color
}

style "menu_framed_box" #this is not needed in Gnome
{
    engine "pixmap"
    {
     image
     {
        function                = BOX
        detail                  = "menu"
        file                          = "../assets/frame.png"
        border                  = { 3, 3, 3, 3 }
        stretch                   = TRUE
     }
    }
}

style "separator_menu_item"
{
    engine "pixmap"
    {
        image
        {
            function            = BOX
              file              = "../assets/line-h.png"
              border            = { 0, 0, 0, 0 }
              stretch         = TRUE
        }
    }
}


style "entry"
{
    xthickness    = 4
    ythickness      = 4

  base[NORMAL] = @base_color
  base[ACTIVE] = @base_color
  base[INSENSITIVE] = @insensitive_base_color

    engine "pixmap"
    {
    image
    {
        function        = SHADOW
        detail          = "entry"
    state       = NORMAL
        shadow          = IN
        file            = "../assets/entry.png"
        border          = { 4, 4, 4, 4 }
        stretch         = TRUE
    }
    image
    {
        function        = SHADOW
        detail          = "entry"
    state       = INSENSITIVE
        shadow          = IN
        file            = "../assets/entry-insensitive.png"
        border          = { 4, 4, 4, 4 }
        stretch         = TRUE
    }
  image
  {
        function        = SHADOW
        detail          = "entry"
    state       = ACTIVE
        file              = "../assets/entry-active.png"
        border          = { 4, 4, 4, 4 }
        stretch         = TRUE
    }
    image
    {
        function    = FLAT_BOX
        detail      = "entry_bg"
        state       = ACTIVE
        file              = "../assets/null.png"
        border          = { 0, 0, 0, 0 }
        stretch         = TRUE
    }
 }
}

style "combobox_entry"
{
  xthickness = 3
  ythickness = 4

  engine "pixmap" {

    # LTR version

    image {
      function = SHADOW
      detail = "entry"
      state = NORMAL
      shadow = IN
      file = "../assets/combo-entry.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    image {
      function = SHADOW
      detail = "entry"
      state = INSENSITIVE
      shadow = IN
      file = "../assets/combo-entry-insensitive.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    image {
      function = SHADOW
      detail = "entry"
      state = ACTIVE
      file = "../assets/combo-entry-active.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    # RTL version

    image {
      function = SHADOW
      detail = "entry"
      state = NORMAL
      shadow = IN
      file = "../assets/combo-entry-button.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }

    image {
      function = SHADOW
      detail = "entry"
      state = INSENSITIVE
      shadow = IN
      file = "../assets/combo-entry-button-insensitive.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }

    image {
      function = SHADOW
      detail = "entry"
      state = ACTIVE
      file = "../assets/combo-entry-button-active.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }
  }
}

style "combobox_entry_button"
{
  xthickness = 6

  fg[ACTIVE] = @text_color

  engine "pixmap" {

    # LTR version

    image {
      function = BOX
      state = NORMAL
      file = "../assets/combo-entry-button.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    image {
      function = BOX
      state = PRELIGHT
      file = "../assets/combo-entry-button.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    image {
      function = BOX
      state = INSENSITIVE
      file = "../assets/combo-entry-button-insensitive.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    image {
      function = BOX
      state = ACTIVE
      file = "../assets/combo-entry-button-active.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = LTR
    }

    # RTL version
    image {
      function = BOX
      state = NORMAL
      file = "../assets/combo-entry.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }

    image {
      function = BOX
      state = PRELIGHT
      file = "../assets/combo-entry.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }

    image {
      function = BOX
      state = INSENSITIVE
      file = "../assets/combo-entry-insensitive.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }

    image {
      function = BOX
      state = ACTIVE
      file = "../assets/combo-entry-active.png"
      border = { 4, 4, 5, 4 }
      stretch = TRUE
      direction = RTL
    }
  }
}


style "notebook_tab_label"
{
  fg[ACTIVE] = @fg_color
}


style "notebook"
{

  xthickness    = 5
  ythickness    = 2

  engine "pixmap"
    {
    image
    {
        function        = EXTENSION
          state           = ACTIVE
          file            = "../assets/tab-bottom-inactive.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = TOP
    }
    image
    {
        function        = EXTENSION
          state           = ACTIVE
          file            = "../assets/tab-top-inactive.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = BOTTOM
    }
    image
    {
        function        = EXTENSION
          state           = ACTIVE
          file            = "../assets/tab-left-inactive.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = RIGHT
    }
    image
    {
        function        = EXTENSION
          state           = ACTIVE
          file            = "../assets/tab-right-inactive.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = LEFT
    }
    image
    {
        function        = EXTENSION
          file            = "../assets/tab-top-active.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = BOTTOM
    }
    image
    {
        function        = EXTENSION
          file            = "../assets/tab-bottom-active.png"
          border            = { 3,3,3,3 }
          stretch           = TRUE
          gap_side      = TOP
    }
    image
    {
        function        = EXTENSION
          file            = "../assets/tab-left-active.png"
          border            = {  3,3,3,3 }
          stretch           = TRUE
          gap_side      = RIGHT
    }
    image
    {
        function        = EXTENSION
          file            = "../assets/tab-right-active.png"
          border            = {  3,3,3,3 }
          stretch           = TRUE
          gap_side      = LEFT
    }

# How to draw boxes with a gap on one side (ie the page of a notebook)

    image
    {
        function            = BOX_GAP
          file                = "../assets/notebook-frame-top.png"
          border                = { 4, 4, 4, 4 }
          stretch               = TRUE
          gap_file          = "../assets/notebook-gap-horizontal.png"
          gap_border    = { 1, 1, 0, 0 }
          gap_side          = TOP
    }
    image
    {
        function            = BOX_GAP
          file                = "../assets/notebook-frame-bottom.png"
          border                = { 4, 4, 4, 4 }
          stretch               = TRUE
          gap_file          = "../assets/notebook-gap-horizontal.png"
          gap_border        = { 1, 1, 0, 0 }
          gap_side          = BOTTOM
    }
    image
    {
        function            = BOX_GAP
          file                = "../assets/notebook-frame-top.png"
          border                = { 4, 4, 4, 4 }
          stretch               = TRUE
          gap_file          = "../assets/notebook-gap-vertical.png"
          gap_border        = { 0, 0, 1, 1 }
          gap_side          = LEFT
    }
    image
    {
        function            = BOX_GAP
          file                = "../assets/notebook-frame-right.png"
          border                = { 4, 4, 4, 4 }
          stretch               = TRUE
          gap_file          = "../assets/notebook-gap-vertical.png"
          gap_border        = { 0, 0, 1, 1 }
          gap_side          = RIGHT
    }

# How to draw the box of a notebook when it isnt attached to a tab

    image
      {
          function      = BOX
          file            = "../assets/frame.png"
          border            = { 4, 4, 4, 4 }
          stretch           = TRUE
      }
  }
}


style "range"
{
  engine "pixmap"
  {
    image
    {
      function			= BOX
      detail			  = "trough"
      file			    = "../assets/scale-trough-horizontal.png"
      border			  = { 4, 4, 0, 0 }
      stretch			  = TRUE
      orientation		= HORIZONTAL
    }
    image
    {
      function			= BOX
      detail			  = "trough"
      file			    = "../assets/scale-trough-vertical.png"
      border			  = { 0, 0, 4, 4 }
      stretch			  = TRUE
      orientation		= VERTICAL
    }

    # Horizontal

    image
    {
      function				= SLIDER
      state           = NORMAL
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }
    image
    {
      function				= SLIDER
      state           = PRELIGHT
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider-active.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }
    image
    {
      function				= SLIDER
      state           = INSENSITIVE
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }

    # Vertical

    image
    {
      function				= SLIDER
      state           = NORMAL
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
    image
    {
      function				= SLIDER
      state           = PRELIGHT
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider-active.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
		
    image
    {
      function				= SLIDER
      state           = INSENSITIVE
      file				    = "../assets/null.png"
      border				  = { 0, 0, 0, 0 }
      stretch				  = TRUE
      overlay_file		= "../assets/scale-slider.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
	# Function below removes ugly boxes

	image
      	{
        	function		= BOX
		      file        = "../assets/null.png"
		      border      = { 3, 3, 3, 3 }
		      stretch     = TRUE
      	}

  }
}


style "scrollbar"
{
  engine "pixmap"
  {
      image
    {
      function      = BOX
      detail        = "trough"
      file          = "../assets/scrollbar-trough-horizontal.png"
      border        = { 25,25, 7, 7 }   #large borders while LibreOffice won't use GtkScrollbar::stepper-spacing=1
      stretch       = TRUE
      orientation   = HORIZONTAL
    }
    image
    {
      function      = BOX
      detail        = "trough"
      file          = "../assets/scrollbar-trough-vertical.png"
      border        = { 7, 7, 25, 25 }
      stretch       = TRUE
      orientation   = VERTICAL
    }
    
# Sliders

  image
    {
      function      = SLIDER
      state         = NORMAL
      file          = "../assets/scrollbar-slider-horizontal.png"
      border        = { 5, 5, 5, 5 }
      stretch       = TRUE
      orientation   = HORIZONTAL

    }
  image
    {
      function      = SLIDER
      state         = ACTIVE
      file          = "../assets/scrollbar-slider-horizontal-hover.png"
      border        = { 5, 5, 5, 5 }
      stretch       = TRUE
      orientation   = HORIZONTAL

    }
    image
    {
      function      = SLIDER
      state         = PRELIGHT
      file          = "../assets/scrollbar-slider-horizontal-hover.png"
      border        = { 5, 5, 5, 5 }
      stretch       = TRUE
      orientation   = HORIZONTAL

    }
    image
    {
      function      = SLIDER
      state         = INSENSITIVE
      file          = "../assets/scrollbar-slider-horizontal.png"
      border        = { 5, 5, 5, 5 }
      stretch       = TRUE
      orientation   = HORIZONTAL

    }

# X Verticals

 image
    {
      function        = SLIDER
      state           = NORMAL
      file            = "../assets/scrollbar-slider-vertical.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      orientation     = VERTICAL
      
    }
   image
    {
      function        = SLIDER
      state           = ACTIVE
      file            = "../assets/scrollbar-slider-vertical-hover.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      orientation     = VERTICAL

    }
    image
    {
      function        = SLIDER
      state           = PRELIGHT
      file            = "../assets/scrollbar-slider-vertical-hover.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      orientation     = VERTICAL

    }
    image
    {
      function        = SLIDER
      state           = INSENSITIVE
      file            = "../assets/scrollbar-slider-vertical.png"
      border          = { 5, 5, 5, 5 }
      stretch         = TRUE
      orientation     = VERTICAL

    }
    image 
    {
      function        = STEPPER
      file            = "../assets/null.png"
      stretch         = TRUE
      
    }
  }
}


style "toolbar"
{
    engine "pixmap"
    {
        image
        {
            function    = BOX
            file          = "../assets/toolbar-background.png"
            stretch     = TRUE
            }
    }
}

style "toolbuttons"
{
  xthickness                = 2
    ythickness                = 2
    GtkWidget::focus_padding  = 2

    engine "pixmap" {

image
        {
            function                = BOX
            state                       = NORMAL
            file                    = "../assets/null.png"
            border                  = { 4, 4, 4, 4 }
            stretch                 = TRUE
        }
image
        {
            function                = BOX
            state                       = PRELIGHT
            file                    = "../assets/toolbutton-hover.png"
            border                  = { 4, 4, 4, 4 }
            stretch                 = TRUE
        }
image
        {
            function                = BOX
            state                       = ACTIVE
            file                    = "../assets/toolbutton-active.png"
            border                  = { 4, 4, 4, 4 }
            stretch                 = TRUE
        }
image
        {
            function                = BOX
            state                       = INSENSITIVE
            file                    = "../assets/null.png"
            border                  = { 4, 4, 4, 4 }
            stretch                 = TRUE
        }
    }
}

style "tooltoggle_buttons"
{
    engine "pixmap"
    {
    image
        {
            function      = BOX
            state                 = NORMAL
            file          = "../assets/null.png"
            border        = { 4, 4, 4, 4 }
            stretch       = TRUE
        }
  image
        {
            function      = BOX
            state                 = PRELIGHT
            file          = "../assets/toolbutton-hover.png"
            border        = { 4, 4, 4, 4 }
            stretch       = TRUE
        }
  image
        {
            function            = BOX
            state                 = ACTIVE
            file                  = "../assets/toolbutton-toggled.png"
            border              = { 4, 4, 4, 4}
            stretch             = TRUE
        }
  image
        {
            function      = BOX
            state                 = INSENSITIVE
            file          = "../assets/null.png"
            border        = { 4, 4, 4, 4 }
            stretch       = TRUE
        }
    }
}


style "progressbar" {
  xthickness              = 0
  ythickness              = 0
  
  fg[PRELIGHT] = @selected_fg_color

  engine "pixmap"
  {
    image
    {
      function    = BOX
      detail      = "trough"
      file        = "../assets/progressbar-trough.png"
      border      = { 4, 4, 4, 4 }
      stretch     = TRUE
      orientation = HORIZONTAL
    }
    image
    {
      function    = BOX
      detail      = "bar"
      file        = "../assets/progressbar-bar.png"
      stretch     = TRUE
      border      = { 4, 4, 4, 4 }
      orientation = HORIZONTAL
    }
    image
    {
      function    = BOX
      detail      = "trough"
      file        = "../assets/progressbar-trough.png"
      border      = { 4, 4, 4, 4 }
      stretch     = TRUE
      orientation = VERTICAL
    }
    image
    {
      function    = BOX
      detail      = "bar"
      file        = "../assets/progressbar-bar.png"
      stretch     = TRUE
      border      = { 4, 4, 4, 4 }
      orientation = VERTICAL
    }
  }
}


style "treeview"
{
    engine "pixmap"
    {
    image
        {
            function            = BOX
              file              = "../assets/tree-header.png"
              border            = { 1, 1, 1, 1 }
              stretch         = TRUE
          }
    }
}

style "scrolled_window"
{
    engine "pixmap"
    {
    image
    {
       function         = SHADOW
       file             = "../assets/frame.png"
       border             = { 5, 5, 5, 5 }
       stretch          = TRUE
    }
  }
}

style "frame"
{
        xthickness      = 1
        ythickness      = 1

        engine "pixmap"
    {
        image
        {
                function                = SHADOW
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                shadow                  = IN
        }
        image
        {
                function                = SHADOW_GAP
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                gap_start_file          = "../assets/frame-gap-start.png"
                gap_start_border        = { 1, 0, 0, 0 }
                gap_end_file            = "../assets/frame-gap-end.png"
                gap_end_border          = { 0, 1, 0, 0 }
                shadow                  = IN
        }
        image
        {
                function                = SHADOW
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                shadow                  = OUT
        }
        image
        {
                function                = SHADOW_GAP
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                gap_start_file          = "../assets/frame-gap-start.png"
                gap_start_border        = { 1, 0, 0, 0 }
                gap_end_file            = "../assets/frame-gap-end.png"
                gap_end_border          = { 0, 1, 0, 0 }
                shadow                  = OUT
        }
        image
        {
                function                = SHADOW
                file                    = "../assets/frame.png"
                border                      = { 1, 1, 1, 1 }
                stretch                 = TRUE
                shadow                  = ETCHED_IN
        }
        image
        {
                function                = SHADOW_GAP
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                gap_start_file          = "../assets/frame-gap-start.png"
                gap_start_border        = { 1, 0, 0, 0 }
                gap_end_file            = "../assets/frame-gap-end.png"
                gap_end_border          = { 0, 1, 0, 0 }
                shadow                  = ETCHED_IN
        }
        image
        {
                function                = SHADOW
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                shadow                  = ETCHED_OUT
        }
        image
        {
                function                = SHADOW_GAP
                file                    = "../assets/frame.png"
                border                  = { 1, 1, 1, 1 }
                stretch                 = TRUE
                gap_start_file          = "../assets/frame-gap-start.png"
                gap_start_border        = { 1, 0, 0, 0 }
                gap_end_file            = "../assets/frame-gap-end.png"
                gap_end_border          = { 0, 1, 0, 0 }
                shadow                  = ETCHED_OUT
        }
        }
}

style "tooltips"
{
    xthickness  = 8
    ythickness  = 4

    bg[NORMAL]    = @tooltip_bg_color
    fg[NORMAL]    = @tooltip_fg_color
    bg[SELECTED]    = @tooltip_bg_color
}

# Chromium

style "chrome-gtk-frame" 
{
    ChromeGtkFrame::frame-color = @bg_color
    ChromeGtkFrame::inactive-frame-color = @bg_color

    ChromeGtkFrame::frame-gradient-size = 100
    ChromeGtkFrame::frame-gradient-color = @bg_color

    ChromeGtkFrame::incognito-frame-color = @bg_color
    ChromeGtkFrame::incognito-inactive-frame-color = @bg_color

    ChromeGtkFrame::incognito-frame-gradient-size = 100
    ChromeGtkFrame::incognito-frame-gradient-color = @bg_color

    ChromeGtkFrame::scrollbar-trough-color = shade (0.912, @bg_color)
    ChromeGtkFrame::scrollbar-slider-prelight-color = shade (1.04, @bg_color)
    ChromeGtkFrame::scrollbar-slider-normal-color = @bg_color
}

style "null"
{
    engine "pixmap"
    {
        image
        {
            function    = BOX
            file        = "../assets/null.png"
            stretch     = TRUE
    }
    }
}

style "toplevel_hack" {

  engine "adwaita" {
  }
}


class "GtkWidget"                   style "default"
class "GtkScrollbar"                style "scrollbar"
class "GtkButton"                   style "button"
class "GtkEntry"                    style "entry"
class "GtkOldEditable"              style "entry"
class "GtkSpinButton"               style "spinbutton"
class "GtkNotebook"                 style "notebook"
class "GtkRange"                    style "range"
class "GtkProgressBar"              style "progressbar"
class "GtkSeparatorMenuItem"        style "separator_menu_item"
class "GtkScrolledWindow"           style "scrolled_window"
class "GtkFrame"                    style "frame"
class "GtkToolButton"               style "toolbuttons"
class "ChromeGtkFrame"              style "chrome-gtk-frame"
class "GtkToggleButton"             style "togglebutton"

widget_class "*<GtkMenuBar>*"                               style "menubar"
widget_class "*<GtkMenu>*"                                  style "menu"
widget_class "*<GtkMenu>*"                                  style "menu_framed_box"
widget_class "*<GtkMenuItem>*"                              style "menu_item"
widget_class "*<GtkMenuBar>.<GtkMenuItem>*"                 style "menubar_item"
widget_class "*Nautilus*ToolBar*"                           style "toolbar"
widget_class "*HandleBox"                                   style "toolbar"
widget_class "*BonoboDockItem"                              style "toolbar"
widget_class "*HandleBox"                                   style "toolbar"
widget_class "*<GtkToolbar>"                                style "toolbar"
widget_class "*.<GtkTreeView>*"                             style "treeview"
widget_class "*Tool*GtkButton"                              style "toolbuttons"
widget_class "*Tool*GtkToggleButton"                        style "tooltoggle_buttons"
widget_class "*<GtkToggleToolButtton>*"                     style "tooltoggle_buttons"
widget_class "*<GtkButton>*<GtkLabel>"                      style "button_label"
widget_class "*.<GtkComboBox>.<GtkCellView>"                style "button_label"
widget_class "*<GtkComboBox>*"                              style "button"
widget_class "*<GtkComboBox>*<GtkSeparator>"                style "combobox_separator"
widget_class "*<GtkComboBox>.<GtkButton>*<GtkSeparator>"    style "combobox_separator"
widget_class "*<GtkComboBoxEntry>*"                         style "combobox_entry"
widget_class "*<GtkComboBoxEntry>*<GtkButton>"              style "combobox_entry_button"
widget_class "*<GtkCombo>*"                                 style "combobox_entry"
widget_class "*<GtkCombo>.<GtkButton>"                      style "combobox_entry_button"
widget_class "*<GtkFileChooserDialog>*GtkToggleButton*"     style "toolbuttons"
widget_class "*<GtkFileChooserDialog>*GtkComboBox*"         style "button"
widget_class "*<GtkNotebook>.<GtkLabel>"                    style "notebook_tab_label"
widget "gtk-tooltip*"                                       style "tooltips"

# Xchat special cases
widget "*xchat-inputbox"                                    style "entry"

# Chrome/Chromium
widget_class "*Chrom*Button*"       style "button"
widget "*swt*toolbar*"              style "toolbuttons"

class "GtkWindow"                                                   style "toplevel_hack"
]], colors)
end

return M

# simple ranger theme (mod)

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = red
            if context.border:
                attr = normal
                fg = black
            if context.media:
                if context.image:
                    fg = red
                else:
                    fg = red
            if context.container:
                attr |= bold
                fg = red
            if context.directory:
                attr |= normal
                fg = black
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                attr |= normal
                fg = red
            if context.socket:
                fg = red
            if context.fifo or context.device:
                fg = yellow
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and red or red
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (red, red):
                    fg = black
                else:
                    fg = red
            if not context.selected and (context.cut or context.copied):
                fg = red
                attr |= bold
            if context.main_column:
                if context.selected:
                    attr |= normal
                if context.marked:
                    attr |= bold
                    fg = red
            if context.badinfo:
                if attr & reverse:
                    bg = red
                else:
                    fg = green

        elif context.in_titlebar:
            attr |= normal
            if context.hostname:
                attr |= bold
                fg = context.bad and red or black
            elif context.directory:
                fg = red
            elif context.tab:
                if context.good:
                    bg = green
            elif context.link:
                fg = red

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = black
                elif context.bad:
                    fg = red
            if context.marked:
                attr |= bold | reverse
                fg = yellow
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = red

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = green

            if context.selected:
                attr |= reverse

        return fg, bg, attr



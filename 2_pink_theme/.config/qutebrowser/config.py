# pylint: disable=C0111
#c = c  # noqa: F821 pylint: disable=E0602,C0103
#config = config  # noqa: F821 pylint: disable=E0602,C0103
# pylint settings included to disable linting errors

# i dont know
#c.colors.statusbar.normal.bg = "#31fb2b"
#c.colors.statusbar.normal.fg = "#31fb2b"

# i dont know
#c.colors.statusbar.command.bg = "#31fb2b"
#c.colors.statusbar.command.fg = "#31fb2b"
# i dont know
#c.colors.statusbar.passthrough.fg = "#ffffff"
c.colors.prompts.bg = "#ffffff"
c.colors.prompts.fg = "#ffffff"
c.colors.statusbar.command.private.bg = "#111111"
c.colors.statusbar.command.private.fg = "#ffffff"
#c.colors.statusbar.insert.bg
#c.colors.statusbar.insert.fg
c.colors.statusbar.private.bg = "#111111"
c.colors.statusbar.private.fg = "#FF0062"


# url
#c.colors.statusbar.url.fg = "#FF0062"
#c.colors.statusbar.url.success.https.fg = "#FF0062"
#c.colors.statusbar.url.hover.fg = "#00D7FF"

# c.statusbar.show = "always"

# pair tab ianctive
c.colors.tabs.even.bg = "#111111"
c.colors.tabs.even.fg = "#ffffff"

# impair tab inactive
c.colors.tabs.odd.bg = "#111111"
c.colors.tabs.odd.fg = "#ffffff"

# i dont know
c.colors.tabs.bar.bg = "#00D7FF"

# pair tab active
c.colors.tabs.selected.even.bg = "#00D7FF"
c.colors.tabs.selected.even.fg = "#111111"

# impair tab active
c.colors.tabs.selected.odd.bg = "#FF0062"
c.colors.tabs.selected.odd.fg = "#ffffff"

# i dont know
c.colors.tabs.indicator.start = "#FE0035"
c.colors.tabs.indicator.stop = "#FE0035"

c.tabs.show = "multiple"

# completion
# text completion match select
c.colors.completion.item.selected.match.fg = "#00D7FF"
# text completion match
c.colors.completion.match.fg = "#FF0062"
# fond menu completion impair
c.colors.completion.odd.bg = "#00D7FF"
# fond menu completion pair
c.colors.completion.even.bg = "#00D7FF"
# text menu completion
c.colors.completion.fg = "#111111"
# completion title
c.colors.completion.category.bg = "#FF0062"
c.colors.completion.category.fg = "#ffffff"
# completion selector 
c.colors.completion.item.selected.bg = "#FF0062"
c.colors.completion.item.selected.fg = "#ffffff"

# messages
c.colors.messages.info.bg = "#FF0062"
c.colors.messages.info.fg = "#ffffff"
c.colors.messages.error.bg = "#00D7FF"
c.colors.messages.error.fg = "#111111"

# dowloads
#c.colors.downloads.error.bg = "#00000000"
#c.colors.downloads.error.fg = "#00000000"
#c.colors.downloads.bar.bg = "#00000000"
#c.colors.downloads.start.bg = "#00000000"
#c.colors.downloads.start.fg = "#00000000"
#c.colors.downloads.stop.bg = "#00000000"
#c.colors.downloads.stop.fg = "#00000000"

#c.colors.tooltip.bg = "#00000000"
#c.colors.webpage.bg = "#00000000"

#c.hints.border = "#00000000"
#c.colors.hints.bg = "#00000000"
#c.colors.hints.fg = "#00000000"

# c.url.start_pages = ""
# c.url.default_page = ""

#c.tabs.title.format = "{audio}{current_title}"
c.fonts.web.size.default = 20

c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!aw': 'https://wiki.archlinux.org/?search={}',
        '!apkg': 'https://archlinux.org/packages/?sort=&q={}&maintainer=&flagged=',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        }

c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']

config.load_autoconfig() # load settings done via the gui

c.auto_save.session = False # save tabs on quit/restart

# keybinding changes
config.bind('=', 'cmd-set-text -s :open')
config.bind('h', 'history')
config.bind('cc', 'hint images spawn sh -c "cliphist link {hint-url}"')
config.bind('cs', 'cmd-set-text -s :config-source')
config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('sH', 'config-cycle statusbar.show always never')
config.bind('T', 'hint links tab')
config.bind('pP', 'open -- {primary}')
config.bind('pp', 'open -- {clipboard}')
config.bind('pt', 'open -t -- {clipboard}')
config.bind('qm', 'macro-record')
config.bind('<ctrl-y>', 'spawn --userscript ytdl.sh')
config.bind('tT', 'config-cycle tabs.position top left')
config.bind('gJ', 'tab-move +')
config.bind('gK', 'tab-move -')
config.bind('gm', 'tab-move')
config.bind('M', 'spawn mpv --gpu-context=wayland {url}')
config.bind('cn', 'open -t')
config.bind('cb', 'tab-close')
config.bind('cv', 'tab-next')
config.bind('cx', 'tab-prev')
config.bind('c1', 'tab-focus 1')
config.bind('c2', 'tab-focus 2')
config.bind('c3', 'tab-focus 3')
config.bind('c4', 'tab-focus 4')
config.bind('cz', 'back')
config.bind('cr', 'forward')

# dark mode setup
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.policy.images = 'never'
config.set('colors.webpage.darkmode.enabled', False, 'file://*')

# styles, cosmetics
# c.content.user_stylesheets = ["~/.config/qutebrowser/styles/youtube-tweaks.css"]
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
c.tabs.indicator.width = 0 # no tab indicators
# c.window.transparent = True # apparently not needed
c.tabs.width = '7%'

# fonts
c.fonts.default_family = ['Hack']
c.fonts.default_size = '16pt'
c.fonts.web.family.fixed = 'Hack'
c.fonts.web.family.sans_serif = 'Hack'
c.fonts.web.family.serif = 'Hack'
c.fonts.web.family.standard = 'Hack'

# privacy - adjust these settings based on your preference
config.set("completion.cmd_history_max_items", 0)
config.set("content.private_browsing", True)
config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "no-unknown-3rdparty")
config.set("content.cookies.store", False)
# config.set("content.javascript.enabled", False) # tsh keybind to toggle

# Adblocking info -->
# For yt ads: place the greasemonkey script yt-ads.js in your greasemonkey folder (~/.config/qutebrowser/greasemonkey).
# The script skips through the entire ad, so all you have to do is click the skip button.
# Yeah it's not ublock origin, but if you want a minimal browser, this is a solution for the tradeoff.
# You can also watch yt vids directly in mpv, see qutebrowser FAQ for how to do that.
# If you want additional blocklists, you can get the python-adblock package, or you can uncomment the ublock lists here.
c.content.blocking.enabled = True
c.content.blocking.method = 'adblock' # uncomment this if you install python-adblock
c.content.blocking.adblock.lists = [
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2023.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2024.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2025.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2026.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-general.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-mobile.txt",
         "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy-removeparam.txt"
         ]

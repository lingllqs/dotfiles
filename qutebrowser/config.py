config.load_autoconfig(False)

c.auto_save.session = True
c.content.autoplay = False
c.content.blocking.enabled = True
c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
        'https://easylist.to/easylist/easylist.txt',
        'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt',
        'https://easylist.to/easylist/easyprivacy.txt',
        'https://secure.fanboy.co.nz/fanboy-annoyance.txt'
]
c.content.plugins = True
c.content.proxy = 'http://127.0.0.1:7897'
c.completion.shrink = True
c.downloads.location.directory = '~/Downloads/qb_downloads'
c.hints.border = '1px solid #181825'
c.hints.chars = 'asdfghjkl'
c.statusbar.show = 'always'
c.tabs.last_close = 'startpage'
c.tabs.position = 'left'
c.tabs.width = '10%'
c.url.default_page = 'file:///dev/null'
c.url.start_pages = ['https://www.google.com']
c.zoom.default = 100

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:145.0) Gecko/20100101 Firefox/145.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {qt_key}/{qt_version} {upstream_browser_key}/{upstream_browser_version_short} Safari/{webkit_version}', 'https://gitlab.gnome.org/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
config.set('content.local_content_can_access_remote_urls', True, 'file:///home/jqms/.local/share/qutebrowser/userscripts/*')
config.set('content.local_content_can_access_file_urls', False, 'file:///home/jqms/.local/share/qutebrowser/userscripts/*')


c.fonts.default_family = 'JetBrainsMono Nerd Font'
c.fonts.default_size = '14pt'
c.fonts.web.size.default = 14
c.fonts.web.size.default_fixed = 14
c.fonts.web.size.minimum = 14

config.unbind('<Ctrl+v>')
config.unbind('M')
config.unbind('b')
config.unbind('m')

config.bind('I', 'config-cycle colors.webpage.darkmode.enabled false true')

config.bind('H', 'back')
config.bind('L', 'forward')
config.bind('J', 'tab-next')
config.bind('K', 'tab-prev')
config.bind('cs', 'config-source')
config.bind('j', 'scroll down')
config.bind('k', 'scroll up')
config.bind('<Ctrl+n>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl+p>', 'completion-item-focus --history prev', mode='command')

c.colors.completion.fg = '#a6adc8'
c.colors.completion.odd.bg = '#181825'
c.colors.completion.even.bg = '#181825'
c.colors.completion.category.fg = '#a6e3a1'
c.colors.completion.category.bg = '#1e1e2e'
c.colors.completion.category.border.top = '#9399b2'
c.colors.completion.category.border.bottom = '#181825'
c.colors.completion.item.selected.fg = '#cdd6f4'
c.colors.completion.item.selected.bg = '#585b70'
c.colors.completion.item.selected.border.top = '#585b70'
c.colors.completion.item.selected.border.bottom = '#585b70'
c.colors.completion.item.selected.match.fg = '#f5e0dc'
c.colors.completion.match.fg = '#cdd6f4'
c.colors.completion.scrollbar.fg = '#585b70'
c.colors.completion.scrollbar.bg = '#11111b'
c.colors.contextmenu.menu.bg = '#1e1e2e'
c.colors.contextmenu.menu.fg = '#cdd6f4'
c.colors.contextmenu.selected.bg = '#6c7086'
c.colors.contextmenu.selected.fg = '#f5e0dc'
c.colors.contextmenu.disabled.bg = '#181825'
c.colors.contextmenu.disabled.fg = '#6c7086'
c.colors.downloads.bar.bg = '#1e1e2e'
c.colors.downloads.start.fg = '#89b4fa'
c.colors.downloads.start.bg = '#1e1e2e'
c.colors.downloads.stop.fg = '#a6e3a1'
c.colors.downloads.stop.bg = '#1e1e2e'
c.colors.downloads.system.fg = 'none'
c.colors.downloads.system.bg = 'none'
c.colors.downloads.error.fg = '#f38ba8'
c.colors.downloads.error.bg = '#1e1e2e'
c.colors.hints.fg = '#181825'
c.colors.hints.bg = '#fab387'
c.colors.hints.match.fg = '#bac2de'
c.colors.keyhint.fg = '#cdd6f4'
c.colors.keyhint.suffix.fg = '#bac2de'
c.colors.keyhint.bg = '#181825'
c.colors.messages.error.fg = '#f38ba8'
c.colors.messages.error.bg = '#6c7086'
c.colors.messages.error.border = '#181825'
c.colors.messages.warning.fg = '#fab387'
c.colors.messages.warning.bg = '#6c7086'
c.colors.messages.warning.border = '#181825'
c.colors.messages.info.fg = '#cdd6f4'
c.colors.messages.info.bg = '#6c7086'
c.colors.messages.info.border = '#181825'
c.colors.prompts.fg = '#cdd6f4'
c.colors.prompts.border = '1px solid #6c7086'
c.colors.prompts.bg = '#181825'
c.colors.prompts.selected.fg = '#f5e0dc'
c.colors.prompts.selected.bg = '#585b70'
c.colors.statusbar.normal.fg = '#cdd6f4'
c.colors.statusbar.normal.bg = '#1e1e2e'
c.colors.statusbar.insert.fg = '#f5e0dc'
c.colors.statusbar.insert.bg = '#11111b'
c.colors.statusbar.passthrough.fg = '#fab387'
c.colors.statusbar.passthrough.bg = '#1e1e2e'
c.colors.statusbar.private.fg = '#bac2de'
c.colors.statusbar.private.bg = '#181825'
c.colors.statusbar.command.fg = '#cdd6f4'
c.colors.statusbar.command.bg = '#1e1e2e'
c.colors.statusbar.command.private.fg = '#bac2de'
c.colors.statusbar.command.private.bg = '#1e1e2e'
c.colors.statusbar.caret.fg = '#fab387'
c.colors.statusbar.caret.bg = '#1e1e2e'
c.colors.statusbar.caret.selection.fg = '#fab387'
c.colors.statusbar.caret.selection.bg = '#1e1e2e'
c.colors.statusbar.progress.bg = '#1e1e2e'
c.colors.statusbar.url.fg = '#cdd6f4'
c.colors.statusbar.url.error.fg = '#f38ba8'
c.colors.statusbar.url.hover.fg = '#89dceb'
c.colors.statusbar.url.success.http.fg = '#94e2d5'
c.colors.statusbar.url.success.https.fg = '#a6e3a1'
c.colors.statusbar.url.warn.fg = '#f9e2af'
c.colors.tabs.bar.bg = '#11111b'
c.colors.tabs.indicator.error = '#f38ba8'
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.fg = '#9399b2'
c.colors.tabs.odd.bg = '#45475a'
c.colors.tabs.even.fg = '#9399b2'
c.colors.tabs.even.bg = '#585b70'
c.colors.tabs.selected.odd.fg = '#cdd6f4'
c.colors.tabs.selected.odd.bg = '#1e1e2e'
c.colors.tabs.selected.even.fg = '#cdd6f4'
c.colors.tabs.selected.even.bg = '#1e1e2e'
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'

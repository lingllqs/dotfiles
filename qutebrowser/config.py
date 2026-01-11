config.load_autoconfig(False)
config.bind('L', 'forward', mode = 'normal')
config.bind('H', 'back', mode = 'normal')
config.bind('K', 'tab-prev', mode = 'normal')
config.bind('J', 'tab-next')

c.content.proxy = "http://127.0.0.1:7897"
c.url.start_pages = "https://www.google.com"
c.colors.webpage.darkmode.enabled = True

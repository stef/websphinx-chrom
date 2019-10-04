src = websphinx/*.js websphinx/*.json websphinx/*.html websphinx/*.css websphinx/*.png websphinx/_locales/*/*.json
CHROME := $(shell (which chrome || which google-chrome || which chromium || which chromium-browser) 2> /dev/null)

all: websphinx.crx

websphinx.crx: $(src)
	$(CHROME) --pack-extension=./websphinx --pack-extension-key=websphinx.pem

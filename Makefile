SOURCES = $(shell find . -type f -name '*.html')

echo:
	echo $(SOURCES)

ChoosyHelp.helpindex: $(SOURCES)
	hiutil -1 -vv --create --locale=en --file $@ .

SOURCES = $(shell find . -type f -name '*.html')

echo:
	echo $(SOURCES)

ChoosyHelp.help/Contents/Resources/English.lproj/ChoosyHelp.helpindex: $(SOURCES)
	hiutil -1 -vv --create --locale=en --file $@ ChoosyHelp.help

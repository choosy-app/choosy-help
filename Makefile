SOURCES = $(shell find . -type f -name '*.html')

.PHONY: echo index

echo:
	echo $(SOURCES)

index: ChoosyHelp.help/Contents/Resources/ChoosyHelp.helpindex

ChoosyHelp.help/Contents/Resources/ChoosyHelp.helpindex: $(SOURCES)
	hiutil -1 -vvv --anchors --create --locale=en --file $@ ChoosyHelp.help/Contents/Resources

.PHONY: all clean

source_files = 				\
	download-initiation.dot		\
	DM_DI_interface.dot		\
	UI-interface-viewonly.dot	\
	downloads_flow.dot

svg_files = $(source_files:.dot=.svg)

all: $(svg_files)

clean:
	-rm $(svg_files)

%.svg : %.dot
	dot -Tsvg -o $@ $<

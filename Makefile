.PHONY: all clean

source_files = 				\
	DM_DI_interface.dot		\
	RDH_objects.dot			\
	UI-interface-viewonly.dot	\
	download-initiation.dot		\
	downloads_flow.dot		\
	filename-determination-control-flow.dot

svg_files = $(source_files:.dot=.svg)

all: $(svg_files)

clean:
	-rm $(svg_files)

%.svg : %.dot
	dot -Tsvg -o $@ $<

IMGS=
DATA=

all: umassdpdk.pdf
	echo Done

umassdpdk.pdf: $(IMGS) $(DATA) umassdpdk.org Makefile
	emacs umassdpdk.org --batch -l emacs-init.el -f org-beamer-export-to-pdf

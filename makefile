ROOT=/Library/TeX/texbin
DOC=StudyWise_Chapter
TEX=$(DOC).tex

# render and view the document
view: pdf
	open $(DOC).pdf

# install prerequisite latex distribution for OSX (requires 'brew')
#   note: you can alternately install via UI (MacTex, TeXShop, or others)
#
# mactex is used here because it can be install via cli
install:
	brew cask install mactex

ps: 
	$(ROOT)/pslatex $(TEX)

pdf:
	$(ROOT)/pdflatex $(TEX)


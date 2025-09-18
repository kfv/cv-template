LATEXMK=latexmk
LATEXMKOPTS=-xelatex -quiet
TEXFILE?=example.tex
PDFFILE=$(TEXFILE:.tex=.pdf)

all: $(PDFFILE)

$(PDFFILE): $(TEXFILE) template.cls
	@echo "Building $(PDFFILE)..."
	$(LATEXMK) $(LATEXMKOPTS) $(TEXFILE)

view: $(PDFFILE)
	@echo "Opening $(PDFFILE)..."
	@if command -v open >/dev/null 2>&1; then \
	  open $(PDFFILE); \
	elif command -v xdg-open >/dev/null 2>&1; then \
	  xdg-open $(PDFFILE); \
	else \
	  echo "Please open $(PDFFILE) manually."; \
	fi

clean:
	@echo "Cleaning up build artefacts..."
	$(LATEXMK) -C $(LATEXMKOPTS) $(TEXFILE)

rebuild: clean all

.PHONY: all view clean rebuild

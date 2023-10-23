RESUME_FILENAME="Jonathan_Prentice.Resume"

.PHONY: setup
setup:
	@echo "Installing dependencies..."
	@sudo tlmgr install `cat requirements.tlmgr.txt`
	@echo "Done."

.PHONY: generate
generate:
	@echo "Generating PDF..."
	@pdflatex $(RESUME_FILENAME).tex
	@echo "Done."

.PHONY: clean
	rm *.log

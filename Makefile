default: assignment.pdf

diagrams = account.pdf business-functions.pdf order-fulfilment.pdf

assignment.pdf: assignment.md bibliography.yaml $(diagrams)
	pandoc --filter pandoc-citeproc \
		--csl harvard-bournemouth-university.csl \
		--bibliography=bibliography.yaml \
		--latex-engine=xelatex \
		-V geometry:a4paper \
		-V mainfont=Constantia \
		-V colorlinks \
		--number-sections \
		--toc \
		-s -o $@ $<

.PHONY: count
count:
	pandoc --to=plain assignment.md | wc -w

%.pdf: %.svg
	inkscape $(CURDIR)/$< -A=$(CURDIR)/$@ --without-gui

clean:
	rm -f assignment.{html,pdf} $(diagrams)

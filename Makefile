
.PHONY : all pdf html clean deploy example

all: pdf html

pdf:
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::pdf_book')"

html:
	if [ ! -d _book ];then mkdir _book;fi
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"
	cp -R book/figures _book; \
	cp -R book/supplementary _book

example:
	cd _example; \
	Rscript -e "rmarkdown::render(input = 'example.Rmd', \
	                              output_file = 'example.html')"

presentation:

	#cd book ; Rscript -e "rmarkdown::render(input = 'presentation.Rmd', output_format = 'ioslides_presentation', output_file = 'presentation.html')"
	cd book ; Rscript -e "rmarkdown::render(input = 'questions.Rmd', output_format = 'pdf_document', output_file = 'questions.pdf')"

deploy:
	./_deploy.bash

clean:
	rm -rf _book/* \
	rm book/*.rds \
	rm book/*.md \
	rm -r book/_bookdown_files \
	rm book/Reproducible-Research-in-R.* \
	rm book/Reproducible\ Research\ in\ R.*

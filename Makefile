
.PHONY : all html pdf examples deploy clean

all: examples html pdf

examples:
	cd book/examples; \
	Rscript -e "rmarkdown::render(input = 'final_report.Rmd', \
	                              output_file = 'final_report.html')"
	#Rscript -e "rmarkdown::render(input = 'presentation.Rmd', \
	#							  output_file = 'presentation.html')"

html:
	if [ ! -d _book ];then mkdir _book;fi
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"
	cp -R book/figures _book; \
	cp -R book/examples _book; \
	cp -R book/supplementary _book

pdf:
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::pdf_book')"

deploy:
	./_deploy.bash

clean:
	rm -rf _book/* \
	rm book/*.rds \
	rm book/*.md \
	rm -r book/_bookdown_files \
	rm book/Reproducible-Research-in-R.* \
	rm book/Reproducible\ Research\ in\ R.*

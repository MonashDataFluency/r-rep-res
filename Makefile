
.PHONY : all pdf html clean deploy

all : pdf html

pdf :
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::pdf_book')"

html :
	if [ ! -d docs ];then mkdir docs;fi
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"
	cp -R book/figures docs

presentation:

	#cd book ; Rscript -e "rmarkdown::render(input = 'presentation.Rmd', output_format = 'ioslides_presentation', output_file = 'presentation.html')"
	cd book ; Rscript -e "rmarkdown::render(input = 'questions.Rmd', output_format = 'pdf_document', output_file = 'questions.pdf')"

deploy :
	git subtree push --prefix docs origin gh-pages

clean :
	rm -rf docs/* \
	rm book/*.rds \
	rm -r book/_bookdown_files \
	rm book/Reproducible-Research-in-R.*
	rm book/Reproducible\ Research\ in\ R.*

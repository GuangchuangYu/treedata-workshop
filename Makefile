all: deploy



render:
	Rscript -e 'rmarkdown::render_site()'

clean:
	rm -rf docs;\
	Rscript -e 'rmarkdown::clean_site()'

deploy: clean render
	mv _site docs

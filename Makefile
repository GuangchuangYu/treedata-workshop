all: render deploy



render:
	Rscript -e 'rmarkdown::render_site()'

clean:
	Rscript -e 'rmarkdown::clean_site()'

deploy:
	rm -rf docs; mv _site docs

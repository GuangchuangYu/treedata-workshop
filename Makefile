all: deploy

render:
	Rscript -e 'rmarkdown::render_site()'

clean: clean_site
	rm -rf docs

clean_site:
	Rscript -e 'rmarkdown::clean_site()'

deploy: clean render
	mv _site docs

push: clean_site
	git add .; git commit -m 'update'; git push


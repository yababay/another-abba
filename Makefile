all: add commit push deploy

add:
	git add .

commit:
	git commit -am update

push:
	git push origin articles

edit:
	/usr/bin/abricotine $(shell read -p 'Имя файла: ' FILE_NAME; FULL_PATH=`pwd`/$$FILE_NAME.md; touch $$FULL_PATH; echo $$FULL_PATH)

toc:
	nvim table-of-content.md

deploy:
	cd ..
	npm run deploy


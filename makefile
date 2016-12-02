build:
	@echo 'Building…'
	@jekyll build --source src --destination dest --config jekyll.yml
	@echo 'Done.'
deploy:
	@echo 'Deploying…'
	@rsync -azc --delete dest/ engel@barrayar2017.ru:/var/www/barrayar2017.ru/html/
	@echo 'Done.'

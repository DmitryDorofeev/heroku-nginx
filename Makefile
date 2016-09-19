deploy:
	docker login --email=_ --username=_ --password=$(echo $_API_KEY) registry.heroku.com
	docker build -t registry.heroku.com/frontend-2016-2/web .
	docker push registry.heroku.com/frontend-2016-2/web

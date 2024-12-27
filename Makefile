REPO ?= default_value

init:
	git init && git remote add origin git@nokinokia.github.com:nokinokia/$(REPO).git && git branch -M main

run:
	docker build -t $(REPO) . && docker run -p 8080:80 -v ./:/usr/share/nginx/html $(REPO)

push:
	git add . && git commit -m "Auto commit" && git push -u origin main

.PHONY: init run push

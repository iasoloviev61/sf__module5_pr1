.PHONY: init_project start_server stop_server getpages 

init_project:
	bash ./getpage.sh&&docker-compose up -d
start_server:
	docker-compose up -d

stop_server:
	docker-compose stop

getpages:
	bash ./getpage.sh	

getpage_lang:
	bash ./getpage.sh $(L)

DOCKER_COMPOSE_PATH	=	./srcs/docker-compose.yaml

start:
	docker build ./srcs/requirements/mariadb -t inception-mariadb
	docker build ./srcs/requirements/nginx -t inception-nginx
	docker build ./srcs/requirements/wordpress -t inception-wordpress
	docker-compose -f $(DOCKER_COMPOSE_PATH) up -d

stop:
	docker-compose -f $(DOCKER_COMPOSE_PATH) down

clean:
	$(stop)
	docker stop $$(docker ps -a -q)

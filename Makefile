DOCKER_COMPOSE_PATH	=	./srcs/docker-compose.yaml

start:
	docker build ./srcs/requirements/mariadb -t inception-mariadb
	docker build ./srcs/requirements/nginx -t inception-nginx
	docker build ./srcs/requirements/wordpress -t inception-wordpress
	docker-compose -f $(DOCKER_COMPOSE_PATH) up -d

stop:
	docker-compose -f $(DOCKER_COMPOSE_PATH) stop

stop-volume:
	docker-compose -f $(DOCKER_COMPOSE_PATH) down -v

clean:
	$(stop)
	docker system prune -a

DOCKER_COMPOSE_PATH	=	./srcs/docker-compose.yaml
DOCKER_CONTAINERS	=	mariadb

all:
	$(start)

start:
	docker build ./srcs/$(DOCKER_CONTAINERS) -t inception-$(DOCKER_CONTAINERS)
	docker-compose -f $(DOCKER_COMPOSE_PATH) up -d

stop:
	docker-compose -f $(DOCKER_COMPOSE_PATH) down

clean:
	$(stop)
	docker stop $$(docker ps -a -q)
